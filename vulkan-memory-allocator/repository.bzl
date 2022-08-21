load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_memory_allocator_repository():
    maybe(
        http_archive,
        name = "vulkan-memory-allocator",
        urls = [
            "https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/6599c36880aa03094861318030fec40919b899ac.zip",
        ],
        sha256 = "586b62cbb83d41e32b2759b553189725a45acb8b698efe5e482dfa79856139a1",
        strip_prefix = "VulkanMemoryAllocator-6599c36880aa03094861318030fec40919b899ac/",
        build_file = "@third_party//vulkan-memory-allocator:package.BUILD",
    )
