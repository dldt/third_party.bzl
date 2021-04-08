load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "tomlplusplus",
    srcs = ["@third_party//tomlplusplus:tomlplusplus.cpp"],
    hdrs = ["toml.hpp"],
    include_prefix = "toml++/",
    defines = ["TOML_HEADER_ONLY=0"],
    visibility = ["//visibility:public"],
)
