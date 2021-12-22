load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tbb_repository():
    maybe(
        http_archive,
        name = "tbb",
        urls = [
            "https://github.com/oneapi-src/oneTBB/archive/v2021.4.0.zip",
        ],
        sha256 = "08ade531be2e4e904eb6bec8e01da51eb3b0e4e86738128eb2722b95e3fcb5e6",
        strip_prefix = "oneTBB-2021.4.0/",
        build_file = "@third_party//tbb:package.BUILD",
        patches = ["@third_party//tbb:0001-tbb-governor-Fix-invalid-implicit-cast.patch"],
        patch_args = ["-p1"],
    )
