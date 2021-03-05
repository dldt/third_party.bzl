load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def webp_repository():
    maybe(
        http_archive,
        name = "webp",
        build_file = "@third_party//webp:package.BUILD",
        sha256 = "d60608c45682fa1e5d41c3c26c199be5d0184084cd8a971a6fc54035f76487d3",
        strip_prefix = "libwebp-1.2.0/",
        urls = [
            "https://github.com/webmproject/libwebp/archive/v1.2.0.tar.gz",
        ],
    )
