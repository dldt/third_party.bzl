load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def catch2_repository():
    maybe(
        http_archive,
        name = "catch2",
        urls = [
            "https://github.com/catchorg/Catch2/archive/v2.12.2.zip",
        ],
        sha256 = "aa2ae2393b530979bb9b613743be84902017514a334068fbc24028edc6db5440",
        strip_prefix = "Catch2-2.12.2/",
        build_file = "@third_party//catch2:package.BUILD",
    )
