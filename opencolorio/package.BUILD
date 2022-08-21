load("@rules_cc//cc:defs.bzl", "cc_library")
load("@third_party//:defs.bzl", "template_rule")

template_rule(
    name = "ocioabi",
    src = "include/OpenColorIO/OpenColorABI.h.in",
    out = "include/OpenColorIO/OpenColorABI.h",
    substitutions = {
        "@OpenColorIO_VERSION@": "2.1.2",
        "@OpenColorIO_VERSION_RELEASE_TYPE@": "",
        "@OpenColorIO_VERSION_MAJOR@": "2",
        "@OpenColorIO_VERSION_MINOR@": "1",
        "@OpenColorIO_VERSION_PATCH@": "2",
    },
)

cc_library(
    name = "OpenColorIO",
    srcs = glob([
        "src/OpenImageIO/*.cpp",
        "src/OpenImageIO/*.h",
    ]),
    hdrs = glob([
        "include/OpenImageIO/**/*.h",
    ]) + [":ocioabi"],
    includes = ["include/"],
    deps = [
    ],
)
