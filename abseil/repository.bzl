load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def abseil_repository():
    maybe(
        http_archive,
        name = "abseil",
        urls = [
            "https://github.com/abseil/abseil-cpp/archive/refs/tags/20210324.2.zip",
        ],
        sha256 = "1a7edda1ff56967e33bc938a4f0a68bb9efc6ba73d62bb4a5f5662463698056c",
        strip_prefix = "abseil-cpp-20210324.2/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@com_github_google_benchmark": "@benchmark",
        },
    )
