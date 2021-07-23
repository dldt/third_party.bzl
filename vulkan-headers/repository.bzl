load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_headers_repository():
    maybe(
        http_archive,
        name = "vulkan-headers",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.2.186.zip",
        ],
        sha256 = "926644dc8d9b76dc0b213e898b459ffeb10880425dbc0263f70bb126a6cbf261",
        strip_prefix = "Vulkan-Headers-1.2.186/",
        build_file = "@third_party//vulkan-headers:package.BUILD",
    )
