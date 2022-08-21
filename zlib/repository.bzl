load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zlib_repository():
    maybe(
        http_archive,
        name = "zlib",
        urls = [
            "https://www.zlib.net/zlib1213.zip",
        ],
        sha256 = "d233fca7cf68db4c16dc5287af61f3cd01ab62495224c66639ca3da537701e42",
        strip_prefix = "zlib-1.2.13/",
        build_file = "@third_party//zlib:package.BUILD",
    )
