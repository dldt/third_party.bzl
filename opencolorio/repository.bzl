load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def opencolorio_repository():
    maybe(
        http_archive,
        name = "opencolorio",
        build_file = "@third_party//opencolorio:package.BUILD",
        sha256 = "198c5f50a2edb508e33f9aceda79428612f2f337d74d8bbbebb61a242e3abd8f",
        strip_prefix = "OpenColorIO-2.0.1/",
        urls = [
            "https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/v2.0.1.zip",
        ],
    )
