load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "argparse",
    hdrs = glob(["include/**"]),
    include_prefix = "argparse/",
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
    deps = ["@nlohmannjson"],
)
