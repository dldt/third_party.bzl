load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fmt_repository():
    maybe(
        http_archive,
        name = "fmt",
        urls = [
            "https://github.com/fmtlib/fmt/archive/8.0.1.zip",
        ],
        sha256 = "6747442c189064b857336007dd7fa3aaf58512aa1a0b2ba76bf1182eefb01025",
        strip_prefix = "fmt-8.0.1/",
        build_file = "@third_party//fmt:package.BUILD",
    )
