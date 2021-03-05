load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_headers_repository():
    maybe(
        http_archive,
        name = "spirv-headers",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Headers/archive/19e951f3deba79b820a18b9088714dff2798a925.zip",
        ],
        sha256 = "32229886715f3ac48c77379ddfe782e8c74ba89a56d3fd34e8498504d57e0993",
        strip_prefix = "SPIRV-Headers-19e951f3deba79b820a18b9088714dff2798a925/",
    )
