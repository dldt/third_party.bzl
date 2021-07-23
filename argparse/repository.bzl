load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def argparse_repository():
    maybe(
        http_archive,
        name = "argparse",
        urls = [
            "https://github.com/p-ranav/argparse/archive/e1ea7ec50ad7b8b3d7740fc6870a0bfc9d1b92df.zip",
        ],
        sha256 = "17673d6711d6ff957bcd000c9fca13ca61c4ecb62109157bc0f094067f507fcf",
        strip_prefix = "argparse-e1ea7ec50ad7b8b3d7740fc6870a0bfc9d1b92df/",
        build_file = "@third_party//argparse:package.BUILD",
    )
