load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spdlog_repository():
    maybe(
        http_archive,
        name = "spdlog",
        urls = [
            "https://github.com/gabime/spdlog/archive/v1.8.2.zip",
        ],
        sha256 = "f0410b12b526065802b40db01304783550d3d20b4b6fe2f8da55f9d08ed2035d",
        strip_prefix = "spdlog-1.8.2/",
        build_file = "@third_party//spdlog:package.BUILD",
    )
