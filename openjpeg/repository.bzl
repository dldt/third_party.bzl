load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openjpeg_repository():
    maybe(
        http_archive,
        name = "openjpeg",
        build_file = "@third_party//openjpeg:package.BUILD",
        sha256 = "ed265742e2d24efa0bcc2dd25e67840e2bde562fb7867204604566f26ae43c0e",
        strip_prefix = "openjpeg-2.5.0/",
        urls = [
            "https://github.com/uclouvain/openjpeg/archive/v2.5.0.zip",
        ],
    )
