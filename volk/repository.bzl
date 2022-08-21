load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def volk_repository():
    maybe(
        http_archive,
        name = "volk",
        urls = [
            "https://github.com/zeux/volk/archive/1.3.215.zip",
        ],
        sha256 = "9fd7bb2a2e0fb0aaccf32847638b7f8f5e1ebea242f2e8e7a7ab741d6c302f1c",
        strip_prefix = "volk-1.3.215/",
        build_file = "@third_party//volk:package.BUILD",
    )
