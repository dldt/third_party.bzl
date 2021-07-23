load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tbb_repository():
    maybe(
        http_archive,
        name = "tbb",
        urls = [
            "https://github.com/oneapi-src/oneTBB/archive/v2021.3.0.zip",
        ],
        sha256 = "aadd36731bdc38702868303a8d08a7e34c5beb54031c99976533e2ca18d4e9ed",
        strip_prefix = "oneTBB-2021.3.0/",
        build_file = "@third_party//tbb:package.BUILD",
        patches = ["@third_party//tbb:0001-tbb-governor-Fix-invalid-implicit-cast.patch"],
        patch_args = ["-p1"],
    )
