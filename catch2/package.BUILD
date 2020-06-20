load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "catch2",
    hdrs = glob(["single_include/**/*.hpp"]),
    strip_include_prefix = "single_include/",
    visibility = ["//visibility:public"],
    alwayslink = True,
)

cc_library(
    name = "catch2_main",
    srcs = ["examples/000-CatchMain.cpp"],
    visibility = ["//visibility:public"],
    deps = ["catch2"],
)
