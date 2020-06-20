load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glad_repository():
    maybe(
        http_archive,
        name = "glad",
        urls = [
            "https://github.com/Dav1dde/glad/archive/v0.1.34.zip",
        ],
        sha256 = "19b8a8b10deef3de4b31d3bde488d28d319db6968fd128be43c8040aef2a0622",
        strip_prefix = "glad-0.1.34/glad/",
        build_file = "@third_party//glad:package.BUILD",
    )
