load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tbb_repository():
    maybe(
        http_archive,
        name = "tbb",
        urls = [
            "https://github.com/oneapi-src/oneTBB/archive/v2021.1.1.zip",
        ],
        sha256 = "74f081a4529f3ffe1ac4d35a993b1bb044ec93dc4b04d6d3b5bccfde5c4310e1",
        strip_prefix = "oneTBB-2021.1.1/",
        build_file = "@third_party//tbb:package.BUILD",
        patches = ["@third_party//tbb:0001-tbb-governor-Fix-invalid-implicit-cast.patch"],
        patch_args = ["-p1"],
    )
