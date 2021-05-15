load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_memory_allocator_repository():
    maybe(
        http_archive,
        name = "vulkan-memory-allocator",
        urls = [
            "https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/6889faaaa284e7ec514e75ea74b113539021d1ad.zip",
        ],
        sha256 = "532846d181ac002b423497f1373e9818859d08870d1c5fbe9af8321be94ac36b",
        strip_prefix = "VulkanMemoryAllocator-6889faaaa284e7ec514e75ea74b113539021d1ad/",
        build_file = "@third_party//vulkan-memory-allocator:package.BUILD",
    )
