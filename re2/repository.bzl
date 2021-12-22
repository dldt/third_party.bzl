load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def re2_repository():
    maybe(
        http_archive,
        name = "re2",
        urls = [
            "https://github.com/google/re2/archive/refs/tags/2021-11-01.zip",
        ],
        sha256 = "3a20f05c57f907f78b817a53f2fb6e48077d2b1d0b17b39caf875c20f262230b",
        strip_prefix = "re2-2021-11-01/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
