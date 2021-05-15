load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def jpeg_repository():
    maybe(
        http_archive,
        name = "jpeg",
        build_file = "@third_party//jpeg:package.BUILD",
        sha256 = "9518d553961d3363148ac10a6a8b802fde24b6218475dd9b9e134d31718ab24d",
        strip_prefix = "libjpeg-turbo-2.1.0/",
        urls = [
            "https://github.com/libjpeg-turbo/libjpeg-turbo/archive/2.1.0.zip",
        ],
    )
