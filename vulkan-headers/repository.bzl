load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_headers_repository():
    maybe(
        http_archive,
        name = "vulkan-headers",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.3.225.zip",
        ],
        sha256 = "a7def9d55ee1af4d055d499ab3028226185084f17fe7d638f34ce1f702355b45",
        strip_prefix = "Vulkan-Headers-1.3.225/",
        build_file = "@third_party//vulkan-headers:package.BUILD",
    )
