load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def range_v3_repository():
    maybe(
        http_archive,
        name = "range-v3",
        urls = [
            "https://github.com/ericniebler/range-v3/archive/0.10.0.zip",
        ],
        sha256 = "4884dc4f62cb9fdc3b803cb44a862448853146f6a26bc37c6f3d53d786168a87",
        strip_prefix = "range-v3-0.10.0/",
        build_file = "@third_party//range-v3:package.BUILD",
    )
