load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def boringssl_repository():
    maybe(
        http_archive,
        name = "boringssl",
        urls = [
            "https://github.com/google/boringssl/archive/ea41bed95b88fa23db9920b9930632cf9163472a.zip",
        ],
        sha256 = "3a6d6c7486bbfbd6b8aca71e81b6b60b58799799e00b2e3d665a2fb2dd172b40",
        strip_prefix = "boringssl-ea41bed95b88fa23db9920b9930632cf9163472a/",
    )
