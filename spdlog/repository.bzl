load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spdlog_repository():
    maybe(
        http_archive,
        name = "spdlog",
        urls = [
            "https://github.com/gabime/spdlog/archive/v1.6.1.zip",
        ],
        sha256 = "901f204af09523cd42e069d6aa0ca05c611cd0719be4662ce6342c6c58f96719",
        strip_prefix = "spdlog-1.6.1/",
        build_file = "@third_party//spdlog:package.BUILD",
    )
