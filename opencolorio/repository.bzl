load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def opencolorio_repository():
    maybe(
        http_archive,
        name = "opencolorio",
        build_file = "@third_party//opencolorio:package.BUILD",
        sha256 = "215ba4df905ceb73c5896ebc507a36976b0df7248c7cceb3e3dc23077b385bdb",
        strip_prefix = "OpenColorIO-2.0.0-rc1/",
        urls = [
            "https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/v2.0.0-rc1.zip",
        ],
    )
