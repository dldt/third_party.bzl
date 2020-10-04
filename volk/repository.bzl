load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def volk_repository():
    maybe(
        http_archive,
        name = "volk",
        urls = [
            "https://github.com/zeux/volk/archive/fbd2738bfaaac12cd33a084cbdf0e52f50254e3c.zip",
        ],
        sha256 = "e79f92a588be8c6ddd033e6bec905e7b1bc055cd04ca418909a858f49096c295",
        strip_prefix = "volk-fbd2738bfaaac12cd33a084cbdf0e52f50254e3c/",
        build_file = "@third_party//volk:package.BUILD",
    )
