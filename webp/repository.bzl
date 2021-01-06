load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def webp_repository():
    maybe(
        http_archive,
        name = "webp",
        build_file = "@third_party//webp:package.BUILD",
        sha256 = "424faab60a14cb92c2a062733b6977b4cc1e875a6398887c5911b3a1a6c56c51",
        strip_prefix = "libwebp-1.1.0/",
        urls = [
            "https://github.com/webmproject/libwebp/archive/v1.1.0.tar.gz",
        ],
    )
