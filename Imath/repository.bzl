load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def Imath_repository():
    maybe(
        http_archive,
        name = "Imath",
        build_file = "@third_party//Imath:package.BUILD",
        strip_prefix = "Imath-3.1.3",
        sha256 = "0bf7ec51162c4d17a4c5b850fb3f6f7a195cff9fa71f4da7735f74d7b5124320",
        urls = ["https://github.com/AcademySoftwareFoundation/Imath/archive/v3.1.3.tar.gz"],
    )
