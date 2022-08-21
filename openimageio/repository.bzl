load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openimageio_repository():
    maybe(
        http_archive,
        name = "openimageio",
        urls = [
            "https://github.com/OpenImageIO/oiio/archive/v2.4.4.2.zip",
        ],
        sha256 = "c99ae76dc336c82dbaab14816a8506154626b80aee411947dba2ff4a811d6403",
        strip_prefix = "oiio-2.4.4.2/",
        build_file = "@third_party//openimageio:package.BUILD",
        patches = [
            "@third_party//openimageio:0001-details-fmt-Use-external-fmtlib.patch",
            "@third_party//openimageio:0002-Fix-compilation-with-OpenEXR.patch",
            "@third_party//openimageio:0003-Fix-conflict-between-fmt-and-std-format-with-c-20.patch",

        ],
        patch_args = ["-p1"],
    )
