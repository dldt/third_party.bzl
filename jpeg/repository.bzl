load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def jpeg_repository():
    maybe(
        http_archive,
        name = "jpeg",
        build_file = "@third_party//jpeg:package.BUILD",
        sha256 = "658647569c8e7a5728c6692fd93df65d17e491f5808522f93fa908e339337cab",
        strip_prefix = "libjpeg-turbo-2.1.4/",
        urls = [
            "https://github.com/libjpeg-turbo/libjpeg-turbo/archive/2.1.4.zip",
        ],
    )
