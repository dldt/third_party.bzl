load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_repository():
    maybe(
        http_archive,
        name = "pybind11",
        urls = ["https://github.com/pybind/pybind11/archive/v2.10.0.zip"],
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        sha256 = "225df6e6dea7cea7c5754d4ed954e9ca7c43947b849b3795f87cb56437f1bd19",
        strip_prefix = "pybind11-2.10.0/",
    )
