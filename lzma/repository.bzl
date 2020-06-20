load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def lzma_repository():
    maybe(
        http_archive,
        name = "lzma",
        urls = [
            "https://sourceforge.net/projects/lzmautils/files/xz-5.2.5.tar.xz?download",
        ],
        sha256 = "3e1e518ffc912f86608a8cb35e4bd41ad1aec210df2a47aaa1f95e7f5576ef56",
        strip_prefix = "xz-5.2.5/",
        build_file = "@third_party//lzma:package.BUILD",
    )
