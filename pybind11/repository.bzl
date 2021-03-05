load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_repository():
    maybe(
        http_archive,
        name = "pybind11",
        urls = ["https://github.com/pybind/pybind11/archive/v2.6.2.zip"],
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        sha256 = "0bdb5fd9616fcfa20918d043501883bf912502843d5afc5bc7329a8bceb157b3",
        strip_prefix = "pybind11-2.6.2/",
    )
