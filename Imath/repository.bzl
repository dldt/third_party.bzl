load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def Imath_repository():
    maybe(
        http_archive,
        name = "Imath",
        build_file = "@third_party//Imath:package.BUILD",
        strip_prefix = "Imath-3.0.1",
        sha256 = "9cd984bb6b0a9572dd4a373b1fab60bc4c992a52ec5c68328fe0f48f194ba3c0",
        urls = ["https://github.com/AcademySoftwareFoundation/Imath/archive/v3.0.1.tar.gz"],
    )
