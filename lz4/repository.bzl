load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def lz4_repository():
    maybe(
        http_archive,
        name = "lz4",
        urls = [
            "https://github.com/lz4/lz4/archive/v1.9.2.zip",
        ],
        sha256 = "0b8bf249fd54a0b974de1a50f0a13ba809a78fd48f90c465c240ee28a9e4784d",
        strip_prefix = "lz4-1.9.2/",
        build_file = "@third_party//lz4:package.BUILD",
    )
