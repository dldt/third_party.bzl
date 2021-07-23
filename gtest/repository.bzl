load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gtest_repository():
    maybe(
        http_archive,
        name = "gtest",
        urls = [
            "https://github.com/google/googletest/archive/release-1.11.0.zip",
        ],
        sha256 = "353571c2440176ded91c2de6d6cd88ddd41401d14692ec1f99e35d013feda55a",
        strip_prefix = "googletest-release-1.11.0/",
    )
