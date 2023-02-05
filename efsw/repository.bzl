load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def efsw_repository():
    maybe(
        http_archive,
        name = "efsw",
        build_file = "@third_party//efsw:package.BUILD",
        sha256 = "64220f78ac095badc670095ffbdbafeb3445cd25dc7a054cc778a8b4abd38c32",
        strip_prefix = "efsw-12773bb62ab1e4c0e630e38c58533636a58aefac",
        urls = [
            "https://github.com/SpartanJ/efsw/archive/12773bb62ab1e4c0e630e38c58533636a58aefac.zip",
        ],
    )
