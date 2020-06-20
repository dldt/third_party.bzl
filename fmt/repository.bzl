load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fmt_repository():
    maybe(
        http_archive,
        name = "fmt",
        urls = [
            "https://github.com/fmtlib/fmt/archive/7.1.2.zip",
        ],
        sha256 = "9b80d862b70a97887228518d900d36549adc3fc14d00ec9a5c4a3f4a6e524b90",
        strip_prefix = "fmt-7.1.2/",
        build_file = "@third_party//fmt:package.BUILD",
    )
