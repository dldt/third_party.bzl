# Rule for simple expansion of template files. This performs a simple
# search over the template file for the keys in substitutions,
# and replaces them with the corresponding values.
#
# Typical usage:
#   load("/tools/build_rules/template_rule", "expand_header_template")
#   template_rule(
#       name = "ExpandMyTemplate",
#       src = "my.template",
#       out = "my.txt",
#       substitutions = {
#         "$VAR1": "foo",
#         "$VAR2": "bar",
#       }
#   )
#
# Args:
#   name: The name of the rule.
#   template: The template file to expand
#   out: The destination of the expanded file
#   substitutions: A dictionary mapping strings to their substitutions

def template_rule_impl(ctx):
    ctx.actions.expand_template(
        template = ctx.file.src,
        output = ctx.outputs.out,
        substitutions = ctx.attr.substitutions,
    )

template_rule = rule(
    attrs = {
        "src": attr.label(
            mandatory = True,
            allow_single_file = True,
        ),
        "substitutions": attr.string_dict(mandatory = True),
        "out": attr.output(mandatory = True),
    },
    # output_to_genfiles is required for header files.
    output_to_genfiles = True,
    implementation = template_rule_impl,
)

# Defines the implementation actions to cmake_configure_file.
def _cmake_configure_file_impl(ctx):
    arguments = [
        "--input",
        ctx.file.src.path,
        "--output",
        ctx.outputs.out.path,
    ]
    for item in ctx.attr.defines:
        arguments.append("-D" + item)
    for item in ctx.attr.undefines:
        arguments.append("-U" + item)
    for item in ctx.files.cmakelists:
        arguments += ["--cmakelists", item.path]
    ctx.actions.run(
        inputs = [ctx.file.src] + ctx.files.cmakelists,
        outputs = [ctx.outputs.out],
        arguments = arguments,
        executable = ctx.executable.cmake_configure_file_py,
    )
    return []

# Defines the rule to cmake_configure_file.
_cmake_configure_file_gen = rule(
    attrs = {
        "src": attr.label(
            allow_single_file = True,
            mandatory = True,
        ),
        "out": attr.output(mandatory = True),
        "defines": attr.string_list(),
        "undefines": attr.string_list(),
        "cmakelists": attr.label_list(allow_files = True),
        "cmake_configure_file_py": attr.label(
            cfg = "host",
            executable = True,
            default = Label("@third_party//:cmake_configure_file"),
        ),
    },
    output_to_genfiles = True,
    implementation = _cmake_configure_file_impl,
)

def cmake_configure_file(
        name,
        src = None,
        out = None,
        defines = None,
        undefines = None,
        cmakelists = None,
        **kwargs):
    """Creates a rule to generate an out= file from a src= file, using CMake's
    configure_file substitution semantics.  This implementation is incomplete,
    and may not produce the same result as CMake in all cases.
    Definitions optionally can be passed in directly as defines= strings (with
    the usual defines= convention of either a name-only "HAVE_FOO", or a
    key-value "MYSCALAR=DOUBLE").
    Definitions optionally can be read from simple CMakeLists files that
    contain statements of the form "set(FOO_MAJOR_VERSION 1)" and similar.
    Variables that are known substitutions but which should be undefined can be
    passed as undefines= strings.
    See cmake_configure_file.py for our implementation of the configure_file
    substitution rules.
    The CMake documentation of the configure_file macro is:
    https://cmake.org/cmake/help/latest/command/configure_file.html
    """
    _cmake_configure_file_gen(
        name = name,
        src = src,
        out = out,
        defines = defines,
        undefines = undefines,
        cmakelists = cmakelists,
        **kwargs
    )
