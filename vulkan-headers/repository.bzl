load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_headers_repository():
    maybe(
        http_archive,
        name = "vulkan-headers",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.2.203.zip",
        ],
        sha256 = "1abc0506bc59e0cfb17ced4ef1e0c4348f6ee0bab02a758245a2f8f3b4e0dc26",
        strip_prefix = "Vulkan-Headers-1.2.203/",
        build_file = "@third_party//vulkan-headers:package.BUILD",
    )
