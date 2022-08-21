load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_headers_repository():
    maybe(
        http_archive,
        name = "spirv-headers",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Headers/archive/0bcc624926a25a2a273d07877fd25a6ff5ba1cfb.zip",
        ],
        sha256 = "54d7734dee26f974719a655f484a679bc90e214920feb3a4c356c23aad9a7393",
        strip_prefix = "SPIRV-Headers-0bcc624926a25a2a273d07877fd25a6ff5ba1cfb/",
    )
