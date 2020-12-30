load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def effcee_repository():
    maybe(
        http_archive,
        name = "effcee",
        urls = [
            "https://github.com/google/effcee/archive/v2019.1.zip",
        ],
        sha256 = "332586221ef53a615cc6595cc54643610b1f9f77acd2862860a1eda6f03de8b9",
        strip_prefix = "effcee-2019.1/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
