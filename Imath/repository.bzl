load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def Imath_repository():
    maybe(
        http_archive,
        name = "Imath",
        build_file = "@third_party//Imath:package.BUILD",
        strip_prefix = "Imath-3.1.5",
        sha256 = "1e9c7c94797cf7b7e61908aed1f80a331088cc7d8873318f70376e4aed5f25fb",
        urls = ["https://github.com/AcademySoftwareFoundation/Imath/archive/v3.1.5.tar.gz"],
    )
