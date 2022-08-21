load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def imgui_repository():
    maybe(
        http_archive,
        name = "imgui",
        urls = [
            "https://github.com/ocornut/imgui/archive/v1.88.zip",
        ],
        sha256 = "81087a74599e5890a07b636887cee73a7dc1a9eb9e1f19a4a0d82a76090bf4c2",
        strip_prefix = "imgui-1.88/",
        build_file = "@third_party//imgui:package.BUILD",
    )
