load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gsl_repository():
    maybe(
        http_archive,
        name = "gsl",
        urls = [
            "https://github.com/microsoft/GSL/archive/8a4b9ed0bf643726ce625678a17b1fc40d90870c.zip",
        ],
        sha256 = "f77b8b05e32db935bc26e6e60a26cb31a10219c3830895db46dc04b9881f39ed",
        strip_prefix = "GSL-8a4b9ed0bf643726ce625678a17b1fc40d90870c/",
        build_file = "@third_party//gsl:package.BUILD",
    )
