load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_headers_repository():
    maybe(
        http_archive,
        name = "spirv-headers",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Headers/archive/f027d53ded7e230e008d37c8b47ede7cd308e19d.zip",
        ],
        sha256 = "134a559f8bedb73c792415965a611b250fcb328de4576c922acf9a2679f746c4",
        strip_prefix = "SPIRV-Headers-f027d53ded7e230e008d37c8b47ede7cd308e19d/",
    )
