load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_memory_allocator_repository():
    maybe(
        http_archive,
        name = "vulkan-memory-allocator",
        urls = [
            "https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/v2.3.0.zip",
        ],
        sha256 = "1c222c372e90f1a0d5e765420974842cf2503683ca14c30f8a0df340ba541f02",
        strip_prefix = "VulkanMemoryAllocator-2.3.0/",
        build_file = "@third_party//vulkan-memory-allocator:package.BUILD",
    )
