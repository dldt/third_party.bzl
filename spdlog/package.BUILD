load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "spdlog",
    srcs = glob(["src/**/*.cpp"]),
    hdrs = glob(["include/**/*.h"]),
    defines = [
        "SPDLOG_COMPILED_LIB",
        "SPDLOG_FMT_EXTERNAL",
    ],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
    deps = ["@fmt"],
)
