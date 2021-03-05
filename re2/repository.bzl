load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def re2_repository():
    maybe(
        http_archive,
        name = "re2",
        urls = [
            "https://github.com/google/re2/archive/2021-02-02.zip",
        ],
        sha256 = "aa437441c4c33dd7a4081757e5bf56bef84c9654b88d5ab3a0489a008f39fed8",
        strip_prefix = "re2-2021-02-02/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
