load("@rules_cc//cc:defs.bzl", "cc_library")
load("@third_party//:defs.bzl", "template_rule")

def stb_library(name, emit_definition_macro = None, stb_prefix = True, copts = [], defines = []):

    
    header_file_name = "{0}{1}.h".format("stb_" if stb_prefix else "", name)

    if emit_definition_macro:
        template_rule(
            name = "{}_implementation".format(name),
            src = "@third_party//stb:stb.c.in",
            out = "{}_impl.c".format(name),
            substitutions = {
                "@STB_EMIT_DEFINITION@": emit_definition_macro,
                "@STB_HEADER@": header_file_name,
            }
        )

    cc_library(
        name = name,
        hdrs = [header_file_name],
        include_prefix = "stb",
        srcs = [header_file_name] +
            [":{}_impl.c".format(name)] if emit_definition_macro else [],
        copts = copts,
        defines = defines,
        visibility = ["//visibility:public"],
    )
