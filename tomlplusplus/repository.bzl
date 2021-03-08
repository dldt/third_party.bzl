load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tomlplusplus_repository():
    maybe(
        http_archive,
        name = "tomlplusplus",
        urls = [
            "https://github.com/marzer/tomlplusplus/archive/v2.3.0.zip",
        ],
        sha256 = "2f239dca3369af174a5e1e98db3bbf1dbc72baae0a928b656a404ab272b80cbc",
        strip_prefix = "tomlplusplus-2.3.0/",
        build_file = "@third_party//tomlplusplus:package.BUILD",
    )
