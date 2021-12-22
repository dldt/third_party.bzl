load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openimageio_repository():
    maybe(
        http_archive,
        name = "openimageio",
        urls = [
            "https://github.com/OpenImageIO/oiio/archive/v2.3.10.1.zip",
        ],
        sha256 = "48ce9b9c3e815885f5634438fed3e240ad186fd9e30d392e17564b5e9eebb089",
        strip_prefix = "oiio-2.3.10.1/",
        build_file = "@third_party//openimageio:package.BUILD",
        patches = [
            "@third_party//openimageio:0001-strutil-Use-external-fmtlib.patch",
            "@third_party//openimageio:0002-Fix-compilation-with-latest-OpenEXR.patch",
        ],
        patch_args = ["-p1"],
    )
