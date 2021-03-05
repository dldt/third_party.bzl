load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "brotli",
    srcs = glob([
        "c/common/*.c",
        "c/common/*.h",
        "c/dec/*.c",
        "c/dec/*.h",
        "c/enc/*.c",
        "c/enc/*.h",
        "c/include/brotli/*.h",
    ]),
    hdrs = [],
    defines = [],
    includes = [
        "c/dec",
        "c/include",
    ],
    deps = [
        "@brotli_c_common_dictionary_bin//c/common/dictionary.bin",
    ],
    linkopts = [],
    visibility = ["//visibility:public"],
)
