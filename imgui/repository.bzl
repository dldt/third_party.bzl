load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def imgui_repository():
    maybe(
        http_archive,
        name = "imgui",
        urls = [
            "https://github.com/ocornut/imgui/archive/v1.81.zip",
        ],
        sha256 = "522c69d98d3729e7a18490855a51ba3689b8504ca61d801e1aa3a88b7f1d5aa8",
        strip_prefix = "imgui-1.81/",
        build_file = "@third_party//imgui:package.BUILD",
    )
