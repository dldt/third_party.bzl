load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def lz4_repository():
    maybe(
        http_archive,
        name = "lz4",
        urls = [
            "https://github.com/lz4/lz4/archive/v1.9.4.zip",
        ],
        sha256 = "37e63d56fb9cbe2e430c7f737a404cd4b98637b05e1467459d5c8fe1a4364cc3",
        strip_prefix = "lz4-1.9.4/",
        build_file = "@third_party//lz4:package.BUILD",
    )
