load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def argparse_repository():
    maybe(
        http_archive,
        name = "argparse",
        urls = [
            "https://github.com/p-ranav/argparse/archive/4cacdc4b30da8e9bdc8aefb6dea575b345da8b2b.zip",
        ],
        sha256 = "1409a30c5478036f40a8e4eb9214c501d00c90bb513722a58389cd32b8405ae6",
        strip_prefix = "argparse-4cacdc4b30da8e9bdc8aefb6dea575b345da8b2b/",
        build_file = "@third_party//argparse:package.BUILD",
    )
