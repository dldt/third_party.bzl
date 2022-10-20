load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gtest_repository():
    maybe(
        http_archive,
        name = "gtest",
        urls = [
            "https://github.com/google/googletest/archive/release-1.12.1.zip",
        ],
        sha256 = "24564e3b712d3eb30ac9a85d92f7d720f60cc0173730ac166f27dda7fed76cb2",
        strip_prefix = "googletest-release-1.12.1/",
    )
