load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def re2_repository():
    maybe(
        http_archive,
        name = "re2",
        urls = [
            "https://github.com/google/re2/archive/refs/tags/2021-06-01.zip",
        ],
        sha256 = "46e3e3af0b0113fa47a31ec3eec33a61842c3d4a8637d2b8d0b896c8bc4be96f",
        strip_prefix = "re2-2021-06-01/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
