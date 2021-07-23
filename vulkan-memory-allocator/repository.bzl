load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_memory_allocator_repository():
    maybe(
        http_archive,
        name = "vulkan-memory-allocator",
        urls = [
            "https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/b0fce340b6c581d2bb75ca6c8c6e55235a52d8e2.zip",
        ],
        sha256 = "d7d62341337b1f2979cf1e056743b167327b756a4493b754e643f3b572ffdafd",
        strip_prefix = "VulkanMemoryAllocator-b0fce340b6c581d2bb75ca6c8c6e55235a52d8e2/",
        build_file = "@third_party//vulkan-memory-allocator:package.BUILD",
    )
