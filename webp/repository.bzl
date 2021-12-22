load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def webp_repository():
    maybe(
        http_archive,
        name = "webp",
        build_file = "@third_party//webp:package.BUILD",
        sha256 = "01bcde6a40a602294994050b81df379d71c40b7e39c819c024d079b3c56307f4",
        strip_prefix = "libwebp-1.2.1/",
        urls = [
            "https://github.com/webmproject/libwebp/archive/v1.2.1.tar.gz",
        ],
    )
