load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_repository():
    maybe(
        http_archive,
        name = "vulkan",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.2.170.zip",
        ],
        sha256 = "724a6b483b637f3e1243cef45463f4fd783a5b3f2b5bd39eb1e9da18a3f249e6",
        strip_prefix = "Vulkan-Headers-1.2.170/",
        build_file = "@third_party//vulkan:package.BUILD",
    )
