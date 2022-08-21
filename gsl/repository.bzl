load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gsl_repository():
    maybe(
        http_archive,
        name = "gsl",
        urls = [
            "https://github.com/microsoft/GSL/archive/10df83d292bf5bbdc487e57dc8c2dc8c7a01f4d1.zip",
        ],
        sha256 = "868e197190afcf6916165277818c783cd4ee7779e6fbda48c84aaf4d237830df",
        strip_prefix = "GSL-10df83d292bf5bbdc487e57dc8c2dc8c7a01f4d1/",
        build_file = "@third_party//gsl:package.BUILD",
    )
