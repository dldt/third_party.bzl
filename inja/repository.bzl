load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def inja_repository():
    maybe(
        http_archive,
        name = "inja",
        urls = [
            "https://github.com/pantor/inja/archive/v3.2.0.zip",
        ],
        sha256 = "4e05f6119b70a473ef61d4568d72001244b15c42dea9a4d2b7f826f4eff73285",
        strip_prefix = "inja-3.2.0/",
        build_file = "@third_party//inja:package.BUILD",
    )
