load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "fmt",
    srcs = ["src/format.cc"],
    hdrs = glob(["include/**"]),
    strip_include_prefix = "include/",
    visibility = ["//visibility:public"],
)
