load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def catch2_repository():
    maybe(
        http_archive,
        name = "catch2",
        urls = [
            "https://github.com/catchorg/Catch2/archive/v2.13.7.zip",
        ],
        sha256 = "3f3ccd90ad3a8fbb1beeb15e6db440ccdcbebe378dfd125d07a1f9a587a927e9",
        strip_prefix = "Catch2-2.13.7/",
        build_file = "@third_party//catch2:package.BUILD",
    )
