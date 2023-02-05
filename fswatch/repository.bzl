load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fswatch_repository():
    maybe(
        http_archive,
        name = "fswatch",
        build_file = "@third_party//fswatch:package.BUILD",
        sha256 = "278476f0f2178bf59dac494c07d6a9b9d181eac8d14f37d17eaf8c6d04a3b4d9",
        strip_prefix = "fswatch-ba411e0d0fabcd5cbf0881f1380482e2f5ab9f47",
        urls = [
            "https://github.com/emcrisostomo/fswatch/archive/ba411e0d0fabcd5cbf0881f1380482e2f5ab9f47.zip",
        ],
    )
