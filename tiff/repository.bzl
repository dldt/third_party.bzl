load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tiff_repository():
    maybe(
        http_archive,
        name = "tiff",
        build_file = "@third_party//tiff:package.BUILD",
        sha256 = "eb0484e568ead8fa23b513e9b0041df7e327f4ee2d22db5a533929dfc19633cb",
        strip_prefix = "tiff-4.2.0",
        urls = [
            "https://download.osgeo.org/libtiff/tiff-4.2.0.tar.gz",
        ],
    )
