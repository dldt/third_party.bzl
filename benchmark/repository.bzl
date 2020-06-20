load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def benchmark_repository():
    maybe(
        http_archive,
        name = "benchmark",
        urls = [
            "https://github.com/google/benchmark/archive/v1.5.1.zip",
        ],
        sha256 = "3e266b49f73ee08625837ea5b1fabc4056b7f5e809b29c49670527326f4f4379",
        strip_prefix = "benchmark-1.5.1/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@python_headers": "@local_config_python",
        },
    )
