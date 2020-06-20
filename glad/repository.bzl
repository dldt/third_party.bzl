load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glad_repository():
    maybe(
        native.local_repository,
        name = "glad",
        path = "third_party/glad",
    )
