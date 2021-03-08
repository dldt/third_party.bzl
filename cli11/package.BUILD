load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "cli11",
    hdrs = glob(["include/CLI/*.hpp"]),
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)
