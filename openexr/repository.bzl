load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openexr_repository():
    maybe(
        http_archive,
        name = "openexr",
        urls = [
            "https://github.com/AcademySoftwareFoundation/openexr/archive/v3.1.5.zip",
        ],
        sha256 = "cdb9beb7f0c78d4b87058f6be82ec60a41c2f5d6dc05eac62bce8cfff7271ca0",
        strip_prefix = "openexr-3.1.5/",
        repo_mapping = {
            "@net_zlib_zlib": "@zlib",
        },
        build_file = "@third_party//openexr:package.BUILD",
    )
