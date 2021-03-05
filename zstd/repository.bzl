load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zstd_repository():
    maybe(
        http_archive,
        name = "zstd",
        urls = ["https://github.com/facebook/zstd/archive/v1.4.9.zip"],
        sha256 = "bc74d2247f72584b9b010679089ee77136982d6f0e1eff28ca9d22c99185dcc6",
        strip_prefix = "zstd-1.4.9",
        build_file = "@third_party//zstd:package.BUILD",
    )
