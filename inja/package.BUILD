load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "jinja2cpp",
    hdrs = glob(["include/**/*.hpp"]),
    includes = ["include/"],
    strip_include_prefix = "include/",
    visibility = ["//visibility:public"],
    deps = [
        "@nlohmannjson",
    ],
)
