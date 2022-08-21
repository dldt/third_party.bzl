load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zstd_repository():
    maybe(
        http_archive,
        name = "zstd",
        urls = ["https://github.com/facebook/zstd/archive/v1.5.2.zip"],
        sha256 = "53f4696f3cec8703f12d3402707a6aaf7eb92d43c90d61e1d32454bda5da7b9c",
        strip_prefix = "zstd-1.5.2",
        build_file = "@third_party//zstd:package.BUILD",
    )
