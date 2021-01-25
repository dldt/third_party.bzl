load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def eigen_repository():
    maybe(
        http_archive,
        name = "eigen",
        urls = [
            "https://gitlab.com/libeigen/eigen/-/archive/3.3.9/eigen-3.3.9.zip",
        ],
        sha256 = "83709a8def0d60dc4d17a749989893ea5e5aacf13f9184ae0509313f400f6f45",
        strip_prefix = "eigen-3.3.9/",
        build_file = "@third_party//eigen:package.BUILD",
    )
