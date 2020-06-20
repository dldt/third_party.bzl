load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def imgui_repository():
    maybe(
        http_archive,
        name = "imgui",
        urls = [
            "https://github.com/ocornut/imgui/archive/v1.79.zip",
        ],
        sha256 = "dcba57bb13a5cd903d570909b97d8fb2aaac669144f5d3c2b3a5f9b1f5998264",
        strip_prefix = "imgui-1.79/",
        build_file = "@third_party//imgui:package.BUILD",
    )
