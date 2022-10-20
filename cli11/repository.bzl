load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cli11_repository():
    maybe(
        http_archive,
        name = "cli11",
        urls = [
            "https://github.com/CLIUtils/CLI11/archive/a66ae4145779c56dc0f9f98a631656417dd77de8.zip",
        ],
        sha256 = "8883ab475b055a4284f0cba53f1ba40a2d8807ea4c1cbafda4bc2705832d0c33",
        strip_prefix = "CLI11-a66ae4145779c56dc0f9f98a631656417dd77de8/",
        build_file = "@third_party//cli11:package.BUILD",
    )
