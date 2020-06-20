load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_repository():
    maybe(
        http_archive,
        name = "pybind11",
        urls = ["https://github.com/pybind/pybind11/archive/v2.5.0.tar.gz"],
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        sha256 = "97504db65640570f32d3fdf701c25a340c8643037c3b69aec469c10c93dc8504",
        strip_prefix = "pybind11-2.5.0/",
    )
