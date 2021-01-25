load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def boringssl_repository():
    maybe(
        http_archive,
        name = "boringssl",
        urls = [
            "https://github.com/google/boringssl/archive/bdbe37905216bea8dd4d0fdee93f6ee415d3aa15.zip",
        ],
        sha256 = "b2a7d159741008e61a1387ec6d93879539e8d7db055c769e4fefe9a371582e44",
        strip_prefix = "boringssl-bdbe37905216bea8dd4d0fdee93f6ee415d3aa15/",
    )
