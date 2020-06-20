load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tbb_repository():
    maybe(
        http_archive,
        name = "tbb",
        urls = [
            "https://github.com/oneapi-src/oneTBB/archive/v2020.3.zip",
        ],
        sha256 = "208a6b413cb6e6133c51493b8257a7cffadeb40ced0c3e29b07748ad838e0dd9",
        strip_prefix = "oneTBB-2020.3/",
        build_file = "@third_party//tbb:package.BUILD",
        patches = ["@third_party//tbb:version_info_windows.patch"],
        patch_args = ["-p1"],
    )
