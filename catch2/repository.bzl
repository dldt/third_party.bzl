load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def catch2_repository():
    maybe(
        http_archive,
        name = "catch2",
        urls = [
            "https://github.com/catchorg/Catch2/archive/v2.13.3.zip",
        ],
        sha256 = "1804feb72bc15c0856b4a43aa586c661af9c3685a75973b6a8fc0b950c7cfd13",
        strip_prefix = "Catch2-2.13.3/",
        build_file = "@third_party//catch2:package.BUILD",
    )
