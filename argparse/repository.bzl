load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def argparse_repository():
    maybe(
        http_archive,
        name = "argparse",
        urls = [
            "https://github.com/p-ranav/argparse/archive/9903a22904fed8176c4a1f69c4b691304b23c78e.zip",
        ],
        sha256 = "09425b2b4f27c173343bc87ed89edf82aad3cdceccb0eaee4134d3673a12fdfa",
        strip_prefix = "argparse-9903a22904fed8176c4a1f69c4b691304b23c78e/",
        build_file = "@third_party//argparse:package.BUILD",
    )
