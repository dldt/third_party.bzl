load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def imgui_repository():
    maybe(
        http_archive,
        name = "imgui",
        urls = [
            "https://github.com/ocornut/imgui/archive/v1.82.zip",
        ],
        sha256 = "e5d450c8b3ebfb7fa2fbef5528e3e80f9df7a459e5a3ac29a29409a022f4c2d8",
        strip_prefix = "imgui-1.82/",
        build_file = "@third_party//imgui:package.BUILD",
    )
