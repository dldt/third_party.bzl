load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openimageio_repository():
    maybe(
        http_archive,
        name = "openimageio",
        urls = [
            "https://github.com/OpenImageIO/oiio/archive/v2.2.14.0.zip",
        ],
        sha256 = "11dc6a9d01a428288be5be35d5f2bc8053d677936c11a10247341c19d6530718",
        strip_prefix = "oiio-2.2.14.0/",
        build_file = "@third_party//openimageio:package.BUILD",
        patches = [
            "@third_party//openimageio:0001-strutil-Use-external-fmtlib.patch",
            "@third_party//openimageio:0002-Fix-build-with-OpenEXR-3.1.0.patch",
        ],
        patch_args = ["-p1"],
    )
