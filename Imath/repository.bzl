load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def Imath_repository():
    maybe(
        http_archive,
        name = "Imath",
        build_file = "@third_party//Imath:package.BUILD",
        strip_prefix = "Imath-3.1.1",
        sha256 = "a63fe91d8d0917acdc31b0c9344b1d7dbc74bf42de3e3ef5ec982386324b9ea4",
        urls = ["https://github.com/AcademySoftwareFoundation/Imath/archive/v3.1.1.tar.gz"],
    )
