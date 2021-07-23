load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def taskflow_repository():
    maybe(
        http_archive,
        name = "taskflow",
        urls = [
            "https://github.com/taskflow/taskflow/archive/refs/tags/v3.2.0.zip",
        ],
        sha256 = "dec011fcd9d73ae4bd8ae4d2714c2c108a013d5f27761d77aa33ea28f516ac8a",
        strip_prefix = "taskflow-3.2.0/",
        build_file = "@third_party//taskflow:package.BUILD",
    )
