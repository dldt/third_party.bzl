load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nanovg_repository():
    maybe(
        http_archive,
        name = "nanovg",
        urls = [
            "https://github.com/inniyah/nanovg/archive/f05b965590e65ef46fe9c7cd81cb30db677fabfb.zip",
        ],
        sha256 = "6a130ebbdb86d8912a996aa38046df112113ef97a2538f5d2a6fed0c23089325",
        strip_prefix = "nanovg-f05b965590e65ef46fe9c7cd81cb30db677fabfb/",
        build_file = "@third_party//nanovg:package.BUILD",
        patches = [
            "@third_party//nanovg:0001-Relocate-stb-include-directives.patch",
            "@third_party//nanovg:0002-Use-glad-instead-of-glew.patch",
            "@third_party//nanovg:0003-Fix-nanovg-on-MacOS.patch",
        ],
        patch_args = ["-p1"],
    )
