load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spdlog_repository():
    maybe(
        http_archive,
        name = "spdlog",
        urls = [
            "https://github.com/gabime/spdlog/archive/v1.10.0.zip",
        ],
        sha256 = "7be28ff05d32a8a11cfba94381e820dd2842835f7f319f843993101bcab44b66",
        strip_prefix = "spdlog-1.10.0/",
        build_file = "@third_party//spdlog:package.BUILD",
    )
