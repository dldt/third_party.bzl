load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "tomlplusplus",
    srcs = ["@third_party//tomlplusplus:tomlplusplus.cpp"],
    hdrs = ["toml.hpp"],
    defines = ["TOML_HEADER_ONLY=0"],
    include_prefix = "toml++/",
    visibility = ["//visibility:public"],
)
