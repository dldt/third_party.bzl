load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def khrplatform_repository():
    maybe(
        http_archive,
        name = "khrplatform",
        urls = [
            "https://github.com/KhronosGroup/EGL-Registry/archive/aa9b63f3ab18aee92c95786a2478156430f809e4.zip",
        ],
        sha256 = "3fd0b4a41d156f2c1ef007af7b3e18eea1bd3b7f6ae6f650275ed2365423920a",
        strip_prefix = "EGL-Registry-aa9b63f3ab18aee92c95786a2478156430f809e4/",
        build_file = "@third_party//khrplatform:package.BUILD",
    )
