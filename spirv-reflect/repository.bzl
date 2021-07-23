load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_reflect_repository():
    maybe(
        http_archive,
        name = "spirv-reflect",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Reflect/archive/ae205dc8a862df480b457df14bbc37515c98ee78.zip",
        ],
        sha256 = "ab11900656285f38d5ba2d6a6a5ff06ecf7ec55ba41b0b214edc5940c6ed96a1",
        strip_prefix = "SPIRV-Reflect-ae205dc8a862df480b457df14bbc37515c98ee78/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
