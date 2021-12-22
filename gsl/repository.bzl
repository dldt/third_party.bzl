load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gsl_repository():
    maybe(
        http_archive,
        name = "gsl",
        urls = [
            "https://github.com/microsoft/GSL/archive/c412deb31e73c9b824abeb6619e11511b279222f.zip",
        ],
        sha256 = "0732507702c46e0260cce85bf7aa8ec295dfb71f0952159fa56462132dff6ce3",
        strip_prefix = "GSL-c412deb31e73c9b824abeb6619e11511b279222f/",
        build_file = "@third_party//gsl:package.BUILD",
    )
