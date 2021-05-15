load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def catch2_repository():
    maybe(
        http_archive,
        name = "catch2",
        urls = [
            "https://github.com/catchorg/Catch2/archive/v2.13.6.zip",
        ],
        sha256 = "39d50f5d1819cdf2908066664d57c2cde4a4000c364ad3376ea099735c896ff4",
        strip_prefix = "Catch2-2.13.6/",
        build_file = "@third_party//catch2:package.BUILD",
    )
