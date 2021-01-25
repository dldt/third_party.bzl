load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nanogui_repository():
    maybe(
        http_archive,
        name = "nanogui",
        urls = [
            "https://github.com/wjakob/nanogui/archive/e9ec8a1a9861cf578d9c6e85a6420080aa715c03.zip",
        ],
        sha256 = "73e99aefa3f13e9ec10f52e429fcd971c759b81442a8ea0dca952ae5810f6a44",
        strip_prefix = "nanogui-e9ec8a1a9861cf578d9c6e85a6420080aa715c03/",
        build_file = "@third_party//nanogui:package.BUILD",
    )
