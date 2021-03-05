load("@rules_cc//cc:defs.bzl", "cc_library")


cc_library(
    name = "tinygltf",
    srcs = ["@third_party//tinygltf:tiny_gltf.cpp"],
    hdrs = ["tiny_gltf.h"],
    defines = ["TINYGLTF_USE_CPP14"],
    includes = ["."],
    visibility = ["//visibility:public"],
    deps = ["@nlohmannjson", "@stb//:image", "@stb//:image_write"],
)
