load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zstd_repository():
    maybe(
        http_archive,
        name = "zstd",
        urls = ["https://github.com/facebook/zstd/archive/v1.5.1.zip"],
        sha256 = "6083012ff62319937a74cdb24960ba3ca5e7441b9f8f011a88c7c678b4d84ad4",
        strip_prefix = "zstd-1.5.1",
        build_file = "@third_party//zstd:package.BUILD",
    )
