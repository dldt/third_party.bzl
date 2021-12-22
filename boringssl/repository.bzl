load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def boringssl_repository():
    maybe(
        http_archive,
        name = "boringssl",
        urls = [
            "https://github.com/google/boringssl/archive/74b0651bbc58ffd1e0622918da52e82532938e07.zip",
        ],
        sha256 = "9d2b2cecb25a9d51df4ee961e8eea1fd344b52726e29a9df207a0cf66305e8ed",
        strip_prefix = "boringssl-74b0651bbc58ffd1e0622918da52e82532938e07/",
        #patches = ["@third_party//boringssl:0001-missing-header-file.patch"],
        patch_args = ["-p1"],
    )
