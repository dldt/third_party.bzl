load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def argparse_repository():
    maybe(
        http_archive,
        name = "argparse",
        urls = [
            "https://github.com/p-ranav/argparse/archive/v2.1.zip",
        ],
        sha256 = "7e7e3324e2ea10c1748bb774c79f6bfb8ac92883956850bf3331abff01f79b6a",
        strip_prefix = "argparse-2.1/",
        build_file = "@third_party//argparse:package.BUILD",
    )
