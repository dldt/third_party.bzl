load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glad_repository():
    maybe(
        http_archive,
        name = "glad",
        urls = [
            "https://github.com/Dav1dde/glad/archive/v0.1.35.zip",
        ],
        sha256 = "5dc4e283d8c130b2d5e41ea75ab4f777e120750813682fa68d1e5efbec4ff30c",
        strip_prefix = "glad-0.1.35/glad/",
        build_file = "@third_party//glad:package.BUILD",
    )
