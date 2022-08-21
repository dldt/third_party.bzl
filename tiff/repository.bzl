load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tiff_repository():
    maybe(
        http_archive,
        name = "tiff",
        build_file = "@third_party//tiff:package.BUILD",
        sha256 = "917223b37538959aca3b790d2d73aa6e626b688e02dcda272aec24c2f498abed",
        strip_prefix = "tiff-4.4.0",
        urls = [
            "https://download.osgeo.org/libtiff/tiff-4.4.0.tar.gz",
        ],
        # Quick and dirty workaround: bazel will add the patch extern/tiff.
        # This will expose libtiff's VERSION file that will conflict with
        # C++20's own version header. Remove it.
        patch_cmds = ["rm -f VERSION"],
        patch_cmds_win = ["rm -Fo VERSION"],
    )
