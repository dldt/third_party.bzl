load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openexr_repository():
    maybe(
        http_archive,
        name = "openexr",
        urls = [
            "https://github.com/AcademySoftwareFoundation/openexr/archive/v3.0.1.zip",
        ],
        sha256 = "31a92d40e6a6abd771dd3961fef7aba8190d31d3b01fb7c70bd003a20f79e5fd",
        strip_prefix = "openexr-3.0.1/",
    )
