load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gsl_repository():
    maybe(
        http_archive,
        name = "gsl",
        urls = [
            "https://github.com/microsoft/GSL/archive/c1cbb41b428f15e53454682a45f03ea31f1da0a7.zip",
        ],
        sha256 = "a7e5eebd31af55c21b8d997e733f72f6602a6f6771e97c4ed0f338fb8f82b93e",
        strip_prefix = "GSL-c1cbb41b428f15e53454682a45f03ea31f1da0a7/",
        build_file = "@third_party//gsl:package.BUILD",
    )
