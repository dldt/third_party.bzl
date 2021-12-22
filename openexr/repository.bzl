load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openexr_repository():
    maybe(
        http_archive,
        name = "openexr",
        urls = [
            "https://github.com/AcademySoftwareFoundation/openexr/archive/v3.1.3.zip",
        ],
        sha256 = "1199e2f8d137628d9a3b41b87c0b1819f5cb34b7cf9dac5ccf6dfc12522dceb9",
        strip_prefix = "openexr-3.1.3/",
        repo_mapping = {
            "@net_zlib_zlib": "@zlib",
        },
        patches = ["@third_party//openexr:0001-Fix-config.h-generation.patch"],
        patch_args = ["-p1"],
        build_file = "@third_party//openexr:package.BUILD",
    )
