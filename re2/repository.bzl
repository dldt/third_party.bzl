load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def re2_repository():
    maybe(
        http_archive,
        name = "re2",
        urls = [
            "https://github.com/google/re2/archive/2020-11-01.zip",
        ],
        sha256 = "b7a29e40083005d280136205a925a49a1cc2b22df7c2a5e3764c35d1c70f4441",
        strip_prefix = "re2-2020-11-01/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
