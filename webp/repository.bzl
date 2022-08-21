load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def webp_repository():
    maybe(
        http_archive,
        name = "webp",
        build_file = "@third_party//webp:package.BUILD",
        sha256 = "dfe7bff3390cd4958da11e760b65318f0a48c32913e4d5bc5e8d55abaaa2d32e",
        strip_prefix = "libwebp-1.2.4/",
        urls = [
            "https://github.com/webmproject/libwebp/archive/v1.2.4.tar.gz",
        ],
    )
