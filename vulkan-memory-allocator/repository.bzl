load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_memory_allocator_repository():
    maybe(
        http_archive,
        name = "vulkan-memory-allocator",
        urls = [
            "https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/7c482850344d0345a85f7c5c1c09e3d203893004.zip",
        ],
        sha256 = "67ebb2d6b717c2bc0936b92fd5a9b822e95fd7327065fef351dc696287bc0868",
        strip_prefix = "VulkanMemoryAllocator-7c482850344d0345a85f7c5c1c09e3d203893004/",
        build_file = "@third_party//vulkan-memory-allocator:package.BUILD",
    )
