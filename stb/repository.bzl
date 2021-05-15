load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def stb_repository():
    maybe(
        http_archive,
        name = "stb",
        urls = [
            "https://github.com/nothings/stb/archive/c9064e317699d2e495f36ba4f9ac037e88ee371a.zip",
        ],
        sha256 = "59527e3ffca9f5a27b8d9bcbe7993182b2005217fc041ad5723e668b50269c76",
        strip_prefix = "stb-c9064e317699d2e495f36ba4f9ac037e88ee371a/",
        build_file = "@third_party//stb:package.BUILD",
    )
