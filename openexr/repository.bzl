load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openexr_repository():
    maybe(
        http_archive,
        name = "openexr",
        urls = [
            "https://github.com/AcademySoftwareFoundation/openexr/archive/v2.5.2.zip",
        ],
        sha256 = "44fd80c41e3b6607e26b6a34fe03f1027806c4e43d70cfe6630dcec02edd2f7c",
        strip_prefix = "openexr-2.5.2/",
        build_file = "@third_party//openexr:package.BUILD",
    )
