load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def argparse_repository():
    maybe(
        http_archive,
        name = "argparse",
        urls = [
            "https://github.com/p-ranav/argparse/archive/535244d7b7fb8b8e2aa88464de98ef120eb4ff7f.zip",
        ],
        sha256 = "ede0db99134b0cb37f0debaef4a2d8fc069b9d5be9159bf9a631e2a195d513f5",
        strip_prefix = "argparse-535244d7b7fb8b8e2aa88464de98ef120eb4ff7f/",
        build_file = "@third_party//argparse:package.BUILD",
    )
