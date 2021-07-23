load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def shaderc_repository():
    maybe(
        http_archive,
        name = "shaderc",
        urls = [
            "https://github.com/google/shaderc/archive/v2021.1.zip",
        ],
        sha256 = "ec24c7e575a2d8adafb494249d392bf9e784299c5d59388edb85980bc19d9ca3",
        strip_prefix = "shaderc-2021.1/",
        build_file = "@third_party//shaderc:package.BUILD",
        patches = ["@third_party//shaderc:0001-Fix-recursive-call-being-generated-with-c-20.patch"],
        patch_args = ["-p1"],
    )
