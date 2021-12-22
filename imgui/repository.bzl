load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def imgui_repository():
    maybe(
        http_archive,
        name = "imgui",
        urls = [
            "https://github.com/ocornut/imgui/archive/v1.85.zip",
        ],
        sha256 = "066a399b6557d6ed91680b2bb05780071e96d9211209d4f0a57176f76d06ab0d",
        strip_prefix = "imgui-1.85/",
        build_file = "@third_party//imgui:package.BUILD",
    )
