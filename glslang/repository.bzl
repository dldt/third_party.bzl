load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/10423ec659d301a0ff2daac8bbf38980abf27590.zip",
        ],
        sha256 = "19ad0219593dc3da7daba554ac6555f1b6ef43823a9c8bb9af712bf3eb1dd47d",
        strip_prefix = "glslang-10423ec659d301a0ff2daac8bbf38980abf27590/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
        patches = ["@third_party//glslang:0001-Export-CHANGES.md-so-that-shaderc-and-other-can-extr.patch"],
        patch_args = ["-p1"],
    )
