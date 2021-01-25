load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openjpeg_repository():
    maybe(
        http_archive,
        name = "openjpeg",
        build_file = "@third_party//openjpeg:package.BUILD",
        sha256 = "99443e5b162a8adedb51093c51baaec6dd42f790a823ed2f2367af84ca008c85",
        strip_prefix = "openjpeg-2.4.0/",
        urls = [
            "https://github.com/uclouvain/openjpeg/archive/v2.4.0.zip",
        ],
    )
