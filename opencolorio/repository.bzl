load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def opencolorio_repository():
    maybe(
        http_archive,
        name = "opencolorio",
        build_file = "@third_party//opencolorio:package.BUILD",
        sha256 = "c90d1ca5f1c29a4df0ec934aca1f7c2ebc18016dff771cb680313efeb988b04f",
        strip_prefix = "OpenColorIO-2.1.2/",
        urls = [
            "https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/v2.1.2.zip",
        ],
    )
