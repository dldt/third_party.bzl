load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_headers_repository():
    maybe(
        http_archive,
        name = "vulkan-headers",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.3.231.zip",
        ],
        sha256 = "68fa5e19776d0e371cd86878db882a5aa9a4d6e3d91ed9363f8ea14e3c356cc6",
        strip_prefix = "Vulkan-Headers-1.3.231/",
        build_file = "@third_party//vulkan-headers:package.BUILD",
    )
