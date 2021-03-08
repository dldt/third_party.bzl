load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cli11_repository():
    maybe(
        http_archive,
        name = "cli11",
        urls = [
            "https://github.com/CLIUtils/CLI11/archive/v1.9.1.zip",
        ],
        sha256 = "281da4f0711b00cc1da770f27330f00efc735b778c33962d798da26d57419f36",
        strip_prefix = "CLI11-1.9.1/",
        build_file = "@third_party//cli11:package.BUILD",
        patch_cmds = ["rm -fr tests/mesonTest/subprojects/CLI11"],
        patch_cmds_win = ["rm -Recurse -Force tests/mesonTest/subprojects/CLI11"],
    )
