load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_repository():
    maybe(
        http_archive,
        name = "pybind11",
        urls = ["https://github.com/pybind/pybind11/archive/v2.7.0.zip"],
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        sha256 = "a9b1ec90e085200a3f346c21fa5b79603e4e60750e29f57bcbf21feec844e54e",
        strip_prefix = "pybind11-2.7.0/",
    )
