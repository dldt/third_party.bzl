load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spdlog_repository():
    maybe(
        http_archive,
        name = "spdlog",
        urls = [
            "https://github.com/gabime/spdlog/archive/v1.8.5.zip",
        ],
        sha256 = "6e66c8ed4c014b0fb00c74d34eea95b5d34f6e4b51b746b1ea863dc3c2e854fd",
        strip_prefix = "spdlog-1.8.5/",
        build_file = "@third_party//spdlog:package.BUILD",
    )
