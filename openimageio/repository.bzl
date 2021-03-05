load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openimageio_repository():
    maybe(
        http_archive,
        name = "openimageio",
        urls = [
            "https://github.com/OpenImageIO/oiio/archive/v2.2.12.0.zip",
        ],
        sha256 = "2ef0d9a8951e4700e6440f984b42acfb5428be4af2964664ad3299dcdd943754",
        strip_prefix = "oiio-2.2.12.0/",
        build_file = "@third_party//openimageio:package.BUILD",
        patches = ["@third_party//openimageio:0001-strutil-Use-external-fmtlib.patch"],
        patch_args = ["-p1"],
    )
