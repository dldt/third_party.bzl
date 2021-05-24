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
    includes = ["lib/"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "lz4_hc",
    srcs = [
        "lib/lz4hc.c",
    ],
    hdrs = [
        "lib/lz4hc.h",
    ],
    includes = ["lib/"],
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
    includes = ["lib/"],
    visibility = ["//visibility:public"],
    deps = [
        ":lz4",
        ":lz4_hc",
    ],
)
