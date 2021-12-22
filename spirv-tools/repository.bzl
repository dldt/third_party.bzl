load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_tools_repository():
    maybe(
        http_archive,
        name = "spirv-tools",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Tools/archive/df2aad68b98279412494a6d449bd71b6756e699b.zip",
        ],
        sha256 = "0d58931be8adb7a0b52a8487bcdb3ee0b5895ea9eea765b99b93608e03aafd9f",
        strip_prefix = "SPIRV-Tools-df2aad68b98279412494a6d449bd71b6756e699b/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
