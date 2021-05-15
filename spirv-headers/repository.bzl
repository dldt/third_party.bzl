load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_headers_repository():
    maybe(
        http_archive,
        name = "spirv-headers",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Headers/archive/ba29b3f59633836c6bb160b951007c8fc3842dee.zip",
        ],
        sha256 = "bae38bd5b68c26c0e3c9b0638f7835f9083de69f8227cc885bc9a6d05537aa91",
        strip_prefix = "SPIRV-Headers-ba29b3f59633836c6bb160b951007c8fc3842dee/",
    )
