load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def argparse_repository():
    maybe(
        http_archive,
        name = "argparse",
        urls = [
            "https://github.com/p-ranav/argparse/archive/refs/tags/v2.6.zip",
        ],
        sha256 = "ce4e58d527b83679bdcc4adfa852af7ec9df16b76c11637823ef642cb02d2618",
        strip_prefix = "argparse-2.6/",
        build_file = "@third_party//argparse:package.BUILD",
    )
