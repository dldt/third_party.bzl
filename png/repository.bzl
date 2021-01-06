load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def png_repository():
    maybe(
        http_archive,
        name = "png",
        build_file = "@third_party//png:package.BUILD",
        sha256 = "3b4b1cbd0bae6822f749d39b1ccadd6297f05e2b85a83dd2ce6ecd7d09eabdf2",
        strip_prefix = "lpng1637/",
        urls = [
            "http://prdownloads.sourceforge.net/libpng/lpng1637.zip?download",
        ],
    )
