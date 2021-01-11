load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def bzip2_repository():
    maybe(
        http_archive,
        name = "bzip2",
        build_file = "@third_party//bzip2:package.BUILD",
        sha256 = "ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269",
        strip_prefix = "bzip2-1.0.8",
        urls = [
            "https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz",
        ],
    )
