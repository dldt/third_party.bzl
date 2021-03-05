load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_memory_allocator_repository():
    maybe(
        http_archive,
        name = "vulkan-memory-allocator",
        urls = [
            "https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/4b047fde545c2e1c82bdc1931f612a7e6b8611ba.zip",
        ],
        sha256 = "94f63cdafc6d077a0c5efb58f82de515728d2fc0ffd4b93947d6aa0eb4b6bdc7",
        strip_prefix = "VulkanMemoryAllocator-4b047fde545c2e1c82bdc1931f612a7e6b8611ba/",
        build_file = "@third_party//vulkan-memory-allocator:package.BUILD",
    )
