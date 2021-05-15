load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def re2_repository():
    maybe(
        http_archive,
        name = "re2",
        urls = [
            "https://github.com/google/re2/archive/refs/tags/2021-04-01.zip",
        ],
        sha256 = "de9f4093103b1b0a82494e7c4357157fd81474c423ee34b5f638fad82a509141",
        strip_prefix = "re2-2021-04-01/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
