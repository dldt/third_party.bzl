load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "brigand",
    hdrs = glob(["include/brigand/**"]),
    includes = ["include"],
    strip_include_prefix = "include/",
    visibility = ["//visibility:public"],
)
