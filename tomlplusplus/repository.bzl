load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tomlplusplus_repository():
    maybe(
        http_archive,
        name = "tomlplusplus",
        urls = [
            "https://github.com/marzer/tomlplusplus/archive/v2.5.0.zip",
        ],
        sha256 = "887dfb7025d532a3485e1269ce5102d9e628ddce8dd055af1020c7b10ee14248",
        strip_prefix = "tomlplusplus-2.5.0/",
        build_file = "@third_party//tomlplusplus:package.BUILD",
    )
