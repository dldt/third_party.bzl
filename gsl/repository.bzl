load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gsl_repository():
    maybe(
        http_archive,
        name = "gsl",
        urls = [
            "https://github.com/microsoft/GSL/archive/ef0ffefe525a6219ff245d19a832ce06f3fd3504.zip",
        ],
        sha256 = "034c7f1460edce79cf8c7a09a00301d986ca1ca37ce8a00ed32424964bccfc92",
        strip_prefix = "GSL-ef0ffefe525a6219ff245d19a832ce06f3fd3504/",
        build_file = "@third_party//gsl:package.BUILD",
    )
