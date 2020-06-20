load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zstd_repository():
    maybe(
        http_archive,
        name = "zstd",
        urls = ["https://github.com/facebook/zstd/archive/v1.4.5.zip"],
        sha256 = "b6c537b53356a3af3ca3e621457751fa9a6ba96daf3aebb3526ae0f610863532",
        strip_prefix = "zstd-1.4.5",
        build_file = "@third_party//zstd:package.BUILD",
    )
