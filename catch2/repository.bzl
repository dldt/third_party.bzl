load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def catch2_repository():
    maybe(
        http_archive,
        name = "catch2",
        urls = [
            "https://github.com/catchorg/Catch2/archive/v3.1.0.zip",
        ],
        sha256 = "7219c2ca75a6b2a157b1b162e4ad819fb32585995cac32542a4f72d950dd96f7",
        strip_prefix = "Catch2-3.1.0/",
        # build_file = "@third_party//catch2:package.BUILD",
    )
