load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def benchmark_repository():
    maybe(
        http_archive,
        name = "benchmark",
        urls = [
            "https://github.com/google/benchmark/archive/refs/tags/v1.7.0.zip",
        ],
        sha256 = "e0e6a0f2a5e8971198e5d382507bfe8e4be504797d75bb7aec44b5ea368fa100",
        strip_prefix = "benchmark-1.7.0/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@python_headers": "@local_config_python",
        },
    )
