load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def volk_repository():
    maybe(
        http_archive,
        name = "volk",
        urls = [
            "https://github.com/zeux/volk/archive/3e47b23ff02d975054d382eae8cea0a9b7c5d328.zip",
        ],
        sha256 = "0b4b9d6f1a3d55a84edddec2f3afa96a5e822496758dd96e9b3d2d3b8f342344",
        strip_prefix = "volk-3e47b23ff02d975054d382eae8cea0a9b7c5d328/",
        build_file = "@third_party//volk:package.BUILD",
    )
