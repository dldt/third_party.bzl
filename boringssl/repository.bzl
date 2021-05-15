load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def boringssl_repository():
    maybe(
        http_archive,
        name = "boringssl",
        urls = [
            "https://github.com/google/boringssl/archive/abf3dea21a10b572e5f1aaa2c6284dc3dbfa995d.zip",
        ],
        sha256 = "abfbed5f6c7a7caae145592390e7f1862ccfa4e492372d420425150a7da50fe8",
        strip_prefix = "boringssl-abf3dea21a10b572e5f1aaa2c6284dc3dbfa995d/",
        patches = ["@third_party//boringssl:0001-Workaround-warnings-as-error.patch"],
        patch_args = ["-p1"],
    )
