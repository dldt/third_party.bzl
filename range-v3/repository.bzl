load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def range_v3_repository():
    maybe(
        http_archive,
        name = "range-v3",
        urls = [
            "https://github.com/ericniebler/range-v3/archive/0.11.0.zip",
        ],
        sha256 = "269e6a5ec8ac9967d5a052e6e312caff5e9f739b149feb402d13719af967b2d6",
        strip_prefix = "range-v3-0.11.0/",
        build_file = "@third_party//range-v3:package.BUILD",
    )
