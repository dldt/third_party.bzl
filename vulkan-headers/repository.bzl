load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_headers_repository():
    maybe(
        http_archive,
        name = "vulkan-headers",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.2.176.zip",
        ],
        sha256 = "055ef3f786fca9b50cb28b4eb1354cabe285c3a1adb1c53578b4c7777c860384",
        strip_prefix = "Vulkan-Headers-1.2.176/",
        build_file = "@third_party//vulkan-headers:package.BUILD",
    )
