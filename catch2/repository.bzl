load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def catch2_repository():
    maybe(
        http_archive,
        name = "catch2",
        urls = [
            "https://github.com/catchorg/Catch2/archive/v2.13.4.zip",
        ],
        sha256 = "f9f957db59e29b099f9eb10f9dcec1bbdbc6da07b9dd8b6b3149ed6a57f986da",
        strip_prefix = "Catch2-2.13.4/",
        build_file = "@third_party//catch2:package.BUILD",
    )
