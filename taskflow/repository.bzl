load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def taskflow_repository():
    maybe(
        http_archive,
        name = "taskflow",
        urls = [
            "https://github.com/taskflow/taskflow/archive/refs/tags/v3.4.0.zip",
        ],
        sha256 = "731c663dff327c53bb40b83c15fefbda555d965d7a77b4dbe0cb1140c167d745",
        strip_prefix = "taskflow-3.4.0/",
        build_file = "@third_party//taskflow:package.BUILD",
    )
