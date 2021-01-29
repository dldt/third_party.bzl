load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def taskflow_repository():
    maybe(
        http_archive,
        name = "taskflow",
        urls = [
            "https://github.com/taskflow/taskflow/archive/v3.0.0.zip",
        ],
        sha256 = "3ab6af7f9f163041c8756cd7f3a4d539177b5d09aaf54d478936eb54fb923469",
        strip_prefix = "taskflow-3.0.0//",
        build_file = "@third_party//taskflow:package.BUILD",
    )
