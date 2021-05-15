load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def benchmark_repository():
    maybe(
        http_archive,
        name = "benchmark",
        urls = [
            "https://github.com/google/benchmark/archive/v1.5.3.zip",
        ],
        sha256 = "bdefa4b03c32d1a27bd50e37ca466d8127c1688d834800c38f3c587a396188ee",
        strip_prefix = "benchmark-1.5.3/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@python_headers": "@local_config_python",
        },
    )
