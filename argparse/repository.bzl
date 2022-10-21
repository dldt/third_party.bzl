load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def argparse_repository():
    maybe(
        http_archive,
        name = "argparse",
        urls = [
            "https://github.com/p-ranav/argparse/archive/refs/tags/v2.9.zip",
        ],
        sha256 = "55396ae05d9deb8030b8ad9babf096be9c35652d5822d8321021bcabb25f4b72",
        strip_prefix = "argparse-2.9/",
        build_file = "@third_party//argparse:package.BUILD",
    )
