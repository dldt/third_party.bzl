load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def boringssl_repository():
    maybe(
        http_archive,
        name = "boringssl",
        urls = [
            "https://github.com/google/boringssl/archive/c8a7d97cb5dca9ded93185bd8f09e40b0fc70ef8.zip",
        ],
        sha256 = "a8a688ea655c23c78aa8db73c3ce402ad99e11da97f485d1fa893a0603a53ae1",
        strip_prefix = "boringssl-c8a7d97cb5dca9ded93185bd8f09e40b0fc70ef8/",
        patch_args = ["-p1"],
    )
