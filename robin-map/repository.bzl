load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def robin_map_repository():
    maybe(
        http_archive,
        name = "robin-map",
        urls = [
            "https://github.com/Tessil/robin-map/archive/v1.0.1.zip",
        ],
        sha256 = "863a0ed49116c5d123b1d0a87f98d2f8e25882d1d8de6cc21f01cdaaa0d9ce31",
        strip_prefix = "robin-map-1.0.1/",
        build_file = "@third_party//robin-map:package.BUILD",
    )
