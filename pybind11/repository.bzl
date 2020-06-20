load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_repository():
    maybe(
        http_archive,
        name = "pybind11",
        urls = ["https://github.com/pybind/pybind11/archive/v2.6.1.zip"],
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        sha256 = "e3f9408fca4e8ebf2d22229d5256adb49098073832aad87f3f6078d91a6942b2",
        strip_prefix = "pybind11-2.6.1/",
    )
