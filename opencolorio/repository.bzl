load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def opencolorio_repository():
    maybe(
        http_archive,
        name = "opencolorio",
        build_file = "@third_party//opencolorio:package.BUILD",
        sha256 = "c9611714c2309c13f08d1ffa9910c0c13b4c825cd46d1c9aba51d0f17488c64f",
        strip_prefix = "OpenColorIO-2.0.0/",
        urls = [
            "https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/v2.0.0.zip",
        ],
    )
