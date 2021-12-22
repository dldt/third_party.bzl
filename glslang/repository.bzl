load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/9b20b25138bfe916173c9341075b996be14baa69.zip",
        ],
        sha256 = "de41961c9ebfbe171cb426bfe1719713174d2322f82196a6972d13b7d8c49dd1",
        strip_prefix = "glslang-9b20b25138bfe916173c9341075b996be14baa69/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
        patches = ["@third_party//glslang:0001-Export-CHANGES.md-so-that-shaderc-and-other-can-extr.patch"],
        patch_args = ["-p1"],
    )
