load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def volk_repository():
    maybe(
        http_archive,
        name = "volk",
        urls = [
            "https://github.com/zeux/volk/archive/1.2.162.zip",
        ],
        sha256 = "3c14dcb1d9d5400806ea192bf29546ce46707b5bc73409ae7ab536b9796bfc93",
        strip_prefix = "volk-1.2.162/",
        build_file = "@third_party//volk:package.BUILD",
    )
