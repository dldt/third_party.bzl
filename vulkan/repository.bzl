load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def vulkan_repository():
    maybe(
        http_archive,
        name = "vulkan",
        urls = [
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.2.144.zip",
        ],
        sha256 = "31b16c7e69494ebfdff0e666a17a7f1fc92d65d923e03d17d2ec03ecc3901f9e",
        strip_prefix = "Vulkan-Headers-1.2.144/",
        build_file = "@third_party//vulkan:package.BUILD",
    )
