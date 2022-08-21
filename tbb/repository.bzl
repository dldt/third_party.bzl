load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tbb_repository():
    maybe(
        http_archive,
        name = "tbb",
        urls = [
            "https://github.com/oneapi-src/oneTBB/archive/v2021.5.0.zip",
        ],
        sha256 = "83ea786c964a384dd72534f9854b419716f412f9d43c0be88d41874763e7bb47",
        strip_prefix = "oneTBB-2021.5.0/",
        build_file = "@third_party//tbb:package.BUILD",
        patches = ["@third_party//tbb:0001-tbb-governor-Fix-invalid-implicit-cast.patch"],
        patch_args = ["-p1"],
    )
