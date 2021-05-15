load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def abseil_repository():
    maybe(
        http_archive,
        name = "abseil",
        urls = [
            "https://github.com/abseil/abseil-cpp/archive/refs/tags/20210324.1.zip",
        ],
        sha256 = "cfb1f22164808eb0a233ad91287df84c2af2084cfc8b429eca1be1e57511065d",
        strip_prefix = "abseil-cpp-20210324.1/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@com_github_google_benchmark": "@benchmark",
        },
    )
