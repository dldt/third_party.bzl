load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def jpeg_repository():
    maybe(
        http_archive,
        name = "jpeg",
        build_file = "@third_party//jpeg:package.BUILD",
        sha256 = "017bdc33ff3a72e11301c0feb4657cb27719d7f97fa67a78ed506c594218bbf1",
        strip_prefix = "libjpeg-turbo-2.0.6/",
        urls = [
            "https://github.com/libjpeg-turbo/libjpeg-turbo/archive/2.0.6.zip",
        ],
    )
