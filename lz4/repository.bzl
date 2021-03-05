load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def lz4_repository():
    maybe(
        http_archive,
        name = "lz4",
        urls = [
            "https://github.com/lz4/lz4/archive/v1.9.3.zip",
        ],
        sha256 = "4ec935d99aa4950eadfefbd49c9fad863185ac24c32001162c44a683ef61b580",
        strip_prefix = "lz4-1.9.3/",
        build_file = "@third_party//lz4:package.BUILD",
    )
