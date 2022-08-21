load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tomlplusplus_repository():
    maybe(
        http_archive,
        name = "tomlplusplus",
        urls = [
            "https://github.com/marzer/tomlplusplus/archive/v3.1.0.zip",
        ],
        sha256 = "3d491511b3fb4004e0f42b781ed2cb843769a14ad4642f2c00250f7440265eb2",
        strip_prefix = "tomlplusplus-3.1.0/",
        build_file = "@third_party//tomlplusplus:package.BUILD",
    )
