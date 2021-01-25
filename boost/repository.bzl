load(":boost_deps.bzl", "boost_deps")

def _boost_repository_rule_impl(ctx):
    ctx.file("WORKSPACE", content = """workspace(name = "{}")""".format(ctx.name))
    ctx.file("BUILD", content = ctx.read(ctx.path(ctx.attr.build_file)))
    for file in ctx.attr.additional_files:
        ctx.file(file.name, content = ctx.read(ctx.path(file)))

_boost_repository_rule = repository_rule(
    _boost_repository_rule_impl,
    attrs = {
        "build_file": attr.label(mandatory = True),
        "additional_files": attr.label_list(),
    },
)

def boost_repository():
    boost_deps()
    _boost_repository_rule(
        name = "boost",
        build_file = "@third_party//boost:package.BUILD",
        additional_files = ["@third_party//boost:boost_libraries.bzl"],
    )
