load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def robin_map_repository():
    maybe(
        http_archive,
        name = "robin-map",
        urls = [
            "https://github.com/Tessil/robin-map/archive/v0.6.3.zip",
        ],
        sha256 = "6e04a4500379bba64978b492560adaf5b57e751684f5e607f455a762f0122dbf",
        strip_prefix = "robin-map-0.6.3/",
        build_file = "@third_party//robin-map:package.BUILD",
    )
