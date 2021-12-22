load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_bazel_repository():
    maybe(
        http_archive,
        name = "pybind11_bazel",
        urls = [
            "https://github.com/pybind/pybind11_bazel/archive/72cbbf1fbc830e487e3012862b7b720001b70672.zip",
        ],
        sha256 = "fec6281e4109115c5157ca720b8fe20c8f655f773172290b03f57353c11869c2",
        strip_prefix = "pybind11_bazel-72cbbf1fbc830e487e3012862b7b720001b70672/",
    )
