load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cli11_repository():
    maybe(
        http_archive,
        name = "cli11",
        urls = [
            "https://github.com/CLIUtils/CLI11/archive/v2.1.2.zip",
        ],
        sha256 = "01321456ee9987a833b49325ca99570fdfaa9c44bcab9e4d735b4afb554bad49",
        strip_prefix = "CLI11-2.1.2/",
        build_file = "@third_party//cli11:package.BUILD",
        patch_cmds = ["rm -fr tests/mesonTest/subprojects/CLI11"],
        patch_cmds_win = ["rm -Recurse -Force tests/mesonTest/subprojects/CLI11"],
    )
