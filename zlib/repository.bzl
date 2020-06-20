load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zlib_repository():
    maybe(
        http_archive,
        name = "zlib",
        urls = [
            "http://www.zlib.net/zlib1211.zip",
            "http://prdownloads.sourceforge.net/libpng/zlib1211.zip?download",
        ],
        sha256 = "d7510a8ee1918b7d0cad197a089c0a2cd4d6df05fee22389f67f115e738b178d",
        strip_prefix = "zlib-1.2.11/",
        build_file = "@third_party//zlib:package.BUILD",
    )
