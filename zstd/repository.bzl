load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zstd_repository():
    maybe(
        http_archive,
        name = "zstd",
        urls = ["https://github.com/facebook/zstd/archive/v1.5.0.zip"],
        sha256 = "424951b44315dd56b52573814a780b0ef57e2f32bad6ddd7a60cbf1fdf1b453b",
        strip_prefix = "zstd-1.5.0",
        build_file = "@third_party//zstd:package.BUILD",
    )
