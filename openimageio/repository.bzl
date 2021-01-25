load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openimageio_repository():
    maybe(
        http_archive,
        name = "openimageio",
        urls = [
            "https://github.com/OpenImageIO/oiio/archive/v2.2.10.1.zip",
        ],
        sha256 = "9e061c69f78e6d7673be2a800a04dbed516722b99b93ed820bf5392379db482d",
        strip_prefix = "oiio-2.2.10.1/",
        build_file = "@third_party//openimageio:package.BUILD",
        patches = ["@third_party//openimageio:0001-strutil-Use-external-fmtlib.patch"],
        patch_args = ["-p1"],
    )
