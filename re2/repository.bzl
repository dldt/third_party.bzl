load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def re2_repository():
    maybe(
        http_archive,
        name = "re2",
        urls = [
            "https://github.com/google/re2/archive/refs/tags/2022-06-01.zip",
        ],
        sha256 = "9f3b65f2e0c78253fcfdfce1754172b0f97ffdb643ee5fd67f0185acf91a3f28",
        strip_prefix = "re2-2022-06-01/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
