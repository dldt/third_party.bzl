load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_repository():
    maybe(
        http_archive,
        name = "pybind11",
        urls = ["https://github.com/pybind/pybind11/archive/v2.8.1.zip"],
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        sha256 = "90907e50b76c8e04f1b99e751958d18e72c4cffa750474b5395a93042035e4a3",
        strip_prefix = "pybind11-2.8.1/",
    )
