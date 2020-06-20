load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_repository():
    maybe(
        http_archive,
        name = "vulkan",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.2.162.zip",
        ],
        sha256 = "5f4e1dd009f401d3936b5f3440c7f0d9b7ca40f217f3999e90e55cba1d397de3",
        strip_prefix = "Vulkan-Headers-1.2.162/",
        build_file = "@third_party//vulkan:package.BUILD",
    )
