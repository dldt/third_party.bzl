load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def inja_repository():
    maybe(
        http_archive,
        name = "inja",
        urls = [
            "https://github.com/pantor/inja/archive/edc17798b3bffb0f2b18c11d583089f62faa53c3.zip",
        ],
        sha256 = "55138301f687239f69785d252983419355b6f5ca9565b6a07512d16eb45bc45c",
        strip_prefix = "inja-edc17798b3bffb0f2b18c11d583089f62faa53c3/",
        build_file = "@third_party//inja:package.BUILD",
    )
