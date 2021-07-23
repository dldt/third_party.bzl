load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def boringssl_repository():
    maybe(
        http_archive,
        name = "boringssl",
        urls = [
            "https://github.com/google/boringssl/archive/d0d26c70e23e30af436566c63500c69a83e6e4fe.zip",
        ],
        sha256 = "607a20c6be91f20df0c2766698c025673f7ffd6de64ee5fb445fb7f300bff4f6",
        strip_prefix = "boringssl-d0d26c70e23e30af436566c63500c69a83e6e4fe/",
        patches = ["@third_party//boringssl:0001-missing-header-file.patch"],
        patch_args = ["-p1"],
    )
