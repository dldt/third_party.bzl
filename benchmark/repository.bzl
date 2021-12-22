load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def benchmark_repository():
    maybe(
        http_archive,
        name = "benchmark",
        urls = [
            "https://github.com/google/benchmark/archive/refs/tags/v1.6.0.zip",
        ],
        sha256 = "3da225763533aa179af8438e994842be5ca72e4a7fed4d7976dc66c8c4502f58",
        strip_prefix = "benchmark-1.6.0/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@python_headers": "@local_config_python",
        },
    )
