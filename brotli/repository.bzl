load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def brotli_repository():
    maybe(
        http_archive,
        name = "brotli",
        urls = ["https://github.com/google/brotli/archive/e83c7b8e8fb8b696a1df6866bc46cbb76d7e0348.zip"],
        strip_prefix = "brotli-e83c7b8e8fb8b696a1df6866bc46cbb76d7e0348/",
        sha256 = "f716c5967228fb52256f3856a1bc081bdd5b7187bb24cfc4bc4f83e43504518a",
    )
