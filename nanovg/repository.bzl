load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nanovg_repository():
    maybe(
        http_archive,
        name = "nanovg",
        urls = [
            "https://github.com/memononen/nanovg/archive/645e9147a8701c98f52240257af0c9d5fa640e86.zip",
        ],
        sha256 = "e45976f5fe80d798d6e2a24618b172d128956b78d389f0cdbc446494d1b6bb31",
        strip_prefix = "nanovg-645e9147a8701c98f52240257af0c9d5fa640e86/",
        build_file = "@third_party//nanovg:package.BUILD",
    )
