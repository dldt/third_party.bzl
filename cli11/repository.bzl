load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cli11_repository():
    maybe(
        http_archive,
        name = "cli11",
        urls = [
            "https://github.com/CLIUtils/CLI11/archive/v2.0.0.zip",
        ],
        sha256 = "e488c75ca5077c302dfea153c4b67bda7fff53c470a8cedf9d7efbea169cca4a",
        strip_prefix = "CLI11-2.0.0/",
        build_file = "@third_party//cli11:package.BUILD",
        patch_cmds = ["rm -fr tests/mesonTest/subprojects/CLI11"],
        patch_cmds_win = ["rm -Recurse -Force tests/mesonTest/subprojects/CLI11"],
    )
