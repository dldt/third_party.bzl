load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "lz4",
    srcs = [
        "lib/lz4.c",
        "lib/xxhash.c",
        "lib/xxhash.h",
    ],
    hdrs = [
        "lib/lz4.h",
    ],
    strip_include_prefix = "lib/",
    visibility = ["//visibility:public"],
)

# lz4_hc includes a .c file...
cc_library(
    name = "lz4_lz4c_include",
    hdrs = [
        "lib/lz4.c",
    ],
    strip_include_prefix = "lib/",
    visibility = ["//visibility:private"],
)

cc_library(
    name = "lz4_hc",
    srcs = [
        "lib/lz4hc.c",
    ],
    hdrs = [
        "lib/lz4hc.h",
    ],
    strip_include_prefix = "lib/",
    textual_hdrs = ["lib/lz4.c"],
    visibility = ["//visibility:public"],
    deps = [
        ":lz4",
    ],
)

cc_library(
    name = "lz4frame",
    srcs = [
        "lib/lz4frame.c",
        "lib/lz4frame_static.h",
    ],
    hdrs = [
        "lib/lz4frame.h",
    ],
    strip_include_prefix = "lib/",
    visibility = ["//visibility:public"],
    deps = [
        ":lz4",
        ":lz4_hc",
    ],
)
