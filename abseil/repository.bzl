load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def abseil_repository():
    maybe(
        http_archive,
        name = "abseil",
        urls = [
            "https://github.com/abseil/abseil-cpp/archive/20200225.2.zip",
        ],
        sha256 = "f342aac71a62861ac784cadb8127d5a42c6c61ab1cd07f00aef05f2cc4988c42",
        strip_prefix = "abseil-cpp-20200225.2/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@com_github_google_benchmark": "@benchmark",
        },
    )
