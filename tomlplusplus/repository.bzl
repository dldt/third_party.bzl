load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tomlplusplus_repository():
    maybe(
        http_archive,
        name = "tomlplusplus",
        urls = [
            "https://github.com/marzer/tomlplusplus/archive/v2.4.0.zip",
        ],
        sha256 = "f1909ad4242331b7b9dce594b976214357361f271f332875607bd272d4007714",
        strip_prefix = "tomlplusplus-2.4.0/",
        build_file = "@third_party//tomlplusplus:package.BUILD",
    )
