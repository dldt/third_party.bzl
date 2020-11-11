load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gsl_repository():
    maybe(
        http_archive,
        name = "gsl",
        urls = [
            "https://github.com/microsoft/GSL/archive/v3.1.0.zip",
        ],
        sha256 = "a1041e41e60f9cb3789036f1c84ea9b4298823cbe94d16b096971fdc3de485b7",
        strip_prefix = "gsl-3.1.0/",
        build_file = "@third_party//gsl:package.BUILD",
    )
