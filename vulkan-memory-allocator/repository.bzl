load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_memory_allocator_repository():
    maybe(
        http_archive,
        name = "vulkan-memory-allocator",
        urls = [
            "https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/8f4e09affd4b67c43e587870c54e20987e69abb3.zip",
        ],
        sha256 = "33620be1c00f2f0149947ed5d73889b5f2b2cc8de7e96aea6c56af5f9cff3c3c",
        strip_prefix = "VulkanMemoryAllocator-8f4e09affd4b67c43e587870c54e20987e69abb3/",
        build_file = "@third_party//vulkan-memory-allocator:package.BUILD",
    )
