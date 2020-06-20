load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fmt_repository():
    maybe(
        http_archive,
        name = "fmt",
        urls = [
            "https://github.com/fmtlib/fmt/archive/6.2.1.zip",
        ],
        sha256 = "36485a8b409579db7318bb7328380e5fb610e6f1e5be2734be284c8935618a3e",
        strip_prefix = "fmt-6.2.1/",
        build_file = "@third_party//fmt:package.BUILD",
    )
