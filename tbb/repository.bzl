load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tbb_repository():
    maybe(
        http_archive,
        name = "tbb",
        urls = [
            "https://github.com/oneapi-src/oneTBB/archive/v2021.2.0.zip",
        ],
        sha256 = "d3a75d98701f53d3dbd663809c74e93348602d02bc33c2039b1cf61427f15278",
        strip_prefix = "oneTBB-2021.2.0/",
        build_file = "@third_party//tbb:package.BUILD",
        patches = ["@third_party//tbb:0001-tbb-governor-Fix-invalid-implicit-cast.patch"],
        patch_args = ["-p1"],
    )
