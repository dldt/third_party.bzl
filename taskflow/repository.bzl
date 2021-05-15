load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def taskflow_repository():
    maybe(
        http_archive,
        name = "taskflow",
        urls = [
            "https://github.com/taskflow/taskflow/archive/refs/tags/v3.1.0.zip",
        ],
        sha256 = "3b1499ef1bbd4c68942b59602fb098fb22aedfbaf4924f0c25ce71ba3370d73f",
        strip_prefix = "taskflow-3.1.0/",
        build_file = "@third_party//taskflow:package.BUILD",
    )
