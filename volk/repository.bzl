load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def volk_repository():
    maybe(
        http_archive,
        name = "volk",
        urls = [
            "https://github.com/zeux/volk/archive/1.2.170.zip",
        ],
        sha256 = "f4615bf0fc9db0ad0b29bd5d93c858bedb3d21b27c9a55433101f3c389fd80a0",
        strip_prefix = "volk-1.2.170/",
        build_file = "@third_party//volk:package.BUILD",
    )
