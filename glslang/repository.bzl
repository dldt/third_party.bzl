load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/50849374cb19559b1f85a0de1dc9b630cb1f4a07.zip",
        ],
        sha256 = "e602b6d4431c26092da0ec268ddbd1408e5e7668d78bca1e34a1eed5be6c29d0",
        strip_prefix = "glslang-50849374cb19559b1f85a0de1dc9b630cb1f4a07/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
        patches = ["@third_party//glslang:0001-Export-CHANGES.md-so-that-shaderc-and-other-can-extr.patch"],
        patch_args = ["-p1"],
    )
