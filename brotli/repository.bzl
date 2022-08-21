load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def brotli_repository():
    maybe(
        http_archive,
        name = "brotli",
        urls = ["https://github.com/google/brotli/archive/9801a2c5d6c67c467ffad676ac301379bb877fc3.zip"],
        strip_prefix = "brotli-9801a2c5d6c67c467ffad676ac301379bb877fc3/",
        sha256 = "79edf11c219ee05fa57f5ec7b2a224d1d945679c457f4585bb834a6e2c321b8f",
    )
