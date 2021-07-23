load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_headers_repository():
    maybe(
        http_archive,
        name = "spirv-headers",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Headers/archive/cf653e4ca4858583802b0d1656bc934edff6bd7f.zip",
        ],
        sha256 = "cdb16140abdbe6486d70d5f33f9d47d89c1f9faee7f7d3d8e3ae98513bc3c4f8",
        strip_prefix = "SPIRV-Headers-cf653e4ca4858583802b0d1656bc934edff6bd7f/",
    )
