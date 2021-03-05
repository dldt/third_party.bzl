load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/159b05708055fdb7cb2f01005d7c35545be6852f.zip",
        ],
        sha256 = "c90209cb952f51777a1832decfc82d60b42311352f3c05e9c5df81635eff75cc",
        strip_prefix = "glslang-159b05708055fdb7cb2f01005d7c35545be6852f/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
