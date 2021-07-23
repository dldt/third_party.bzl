load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def brotli_repository():
    maybe(
        http_archive,
        name = "brotli",
        urls = ["https://github.com/google/brotli/archive/ce222e317e36aa362e83fc50c7a6226d238e03fd.zip"],
        strip_prefix = "brotli-ce222e317e36aa362e83fc50c7a6226d238e03fd/",
        sha256 = "c97352d1d08d18487b982cd03ff9477c12c2f90239767e9f3a9a4f93f965fca4",
    )
