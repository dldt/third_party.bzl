load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tbb_repository():
    maybe(
        http_archive,
        name = "tbb",
        urls = [
            "https://github.com/oneapi-src/oneTBB/archive/v2020.2.zip",
        ],
        sha256 = "cffbd1bb0c13fa0ad888dd09ee9e0b7ddf47180c188d3dd652029d70deb055b0",
        strip_prefix = "oneTBB-2020.2/",
        build_file = "@third_party//tbb:package.BUILD",
        patches = ["@third_party//tbb:version_info_windows.patch"],
        patch_args = ["-p1"],
    )
