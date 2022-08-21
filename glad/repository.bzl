load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glad_repository():
    maybe(
        http_archive,
        name = "glad",
        urls = [
            "https://github.com/Dav1dde/glad/archive/v0.1.36.zip",
        ],
        sha256 = "3b407840e2c3ab7896486fe7d2f0324f83f01f943b1b723e79ae4e775e63322b",
        strip_prefix = "glad-0.1.36/glad/",
        build_file = "@third_party//glad:package.BUILD",
    )
