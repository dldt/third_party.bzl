load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gif_repository():
    maybe(
        http_archive,
        name = "gif",
        urls = ["https://downloads.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz"],
        strip_prefix = "giflib-5.2.1/",
        build_file = "@third_party//gif:package.BUILD",
        sha256 = "31da5562f44c5f15d63340a09a4fd62b48c45620cd302f77a6d9acf0077879bd",
    )
