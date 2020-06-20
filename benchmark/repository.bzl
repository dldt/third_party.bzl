load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def benchmark_repository():
    maybe(
        http_archive,
        name = "benchmark",
        urls = [
            "https://github.com/google/benchmark/archive/v1.5.2.zip",
        ],
        sha256 = "21e6e096c9a9a88076b46bd38c33660f565fa050ca427125f64c4a8bf60f336b",
        strip_prefix = "benchmark-1.5.2/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@python_headers": "@local_config_python",
        },
        patches = ["@third_party//benchmark:limits.patch"],
        patch_args = ["-p1"],
    )
