load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def volk_repository():
    maybe(
        http_archive,
        name = "volk",
        urls = [
            "https://github.com/zeux/volk/archive/1.2.190.zip",
        ],
        sha256 = "f108fa96e7d579f61235cff7792ac83b2ff1e336d5fadaa445db919b5b92440c",
        strip_prefix = "volk-1.2.190/",
        build_file = "@third_party//volk:package.BUILD",
    )
