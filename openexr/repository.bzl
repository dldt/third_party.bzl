load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openexr_repository():
    maybe(
        http_archive,
        name = "openexr",
        urls = [
            "https://github.com/AcademySoftwareFoundation/openexr/archive/v3.1.0.zip",
        ],
        sha256 = "52151eea9b66a92cdbc651a074a178e2cfdd85005628ce199b7d44e50393e74a",
        strip_prefix = "openexr-3.1.0/",
        repo_mapping = {
            "@net_zlib_zlib": "@zlib",
        },
        patches = ["@third_party//openexr:0001-Fix-config.h-generation.patch"],
        patch_args = ["-p1"],
    )
