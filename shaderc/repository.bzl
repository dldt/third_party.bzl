load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def shaderc_repository():
    maybe(
        http_archive,
        name = "shaderc",
        urls = [
            "https://github.com/google/shaderc/archive/v2021.0.zip",
        ],
        sha256 = "6e88a4a5b3c2b573d86abb271a13f1cf58049dbe2097ddd0cab6ee3c9df98a2a",
        strip_prefix = "shaderc-2021.0/",
        build_file = "@third_party//shaderc:package.BUILD",
        patches = ["@third_party//shaderc:0001-Fix-recursive-call-being-generated-with-c-20.patch"],
        patch_args = ["-p1"],
    )
