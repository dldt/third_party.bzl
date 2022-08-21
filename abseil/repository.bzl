load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def abseil_repository():
    maybe(
        http_archive,
        name = "abseil",
        urls = [
            "https://github.com/abseil/abseil-cpp/archive/refs/tags/20220623.0.zip",
        ],
        sha256 = "5b7640be0e119de1a9d941cb6b2607d76978eba5720196f1d4fc6de0421d2241",
        strip_prefix = "abseil-cpp-20220623.0/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@com_github_google_benchmark": "@benchmark",
        },
    )
