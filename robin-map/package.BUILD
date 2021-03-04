load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "robin-map",
    hdrs = glob([
        "include/tsl/*.h",
    ]),
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
