load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fmt_repository():
    maybe(
        http_archive,
        name = "fmt",
        urls = [
            "https://github.com/fmtlib/fmt/archive/9.0.0.zip",
        ],
        sha256 = "01867bffc0b30ac71d5f05854e62e451367fa1aceddef40cae965338a7e00a74",
        strip_prefix = "fmt-9.0.0/",
        build_file = "@third_party//fmt:package.BUILD",
    )
