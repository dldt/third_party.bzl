load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def benchmark_repository():
    maybe(
        http_archive,
        name = "benchmark",
        urls = [
            "https://github.com/google/benchmark/archive/v1.5.5.zip",
        ],
        sha256 = "30f2e5156de241789d772dd8b130c1cb5d33473cc2f29e4008eab680df7bd1f0",
        strip_prefix = "benchmark-1.5.5/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@python_headers": "@local_config_python",
        },
    )
