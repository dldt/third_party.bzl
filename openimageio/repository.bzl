load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openimageio_repository():
    maybe(
        http_archive,
        name = "openimageio",
        urls = [
            "https://github.com/OpenImageIO/oiio/archive/v2.2.16.0.zip",
        ],
        sha256 = "43274dc17213a2d6df274fe8ebd7ad91136a44eb0c26aa2069b9989242ed1ae6",
        strip_prefix = "oiio-2.2.16.0/",
        build_file = "@third_party//openimageio:package.BUILD",
        patches = [
            "@third_party//openimageio:0001-strutil-Use-external-fmtlib.patch",
            "@third_party//openimageio:0002-Fix-build-with-OpenEXR-3.1.0.patch",
            "@third_party//openimageio:0003-fmt-related-fixes-3007.patch",
        ],
        patch_args = ["-p1"],
    )
