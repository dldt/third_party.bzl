load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nanogui_repository():
    maybe(
        http_archive,
        name = "nanogui",
        urls = [
            "https://github.com/mitsuba-renderer/nanogui/archive/c6505300bb3036ec87ac68f5f1699c434c3d7fc6.zip",
        ],
        sha256 = "73cd7bf6670c661c6cd4fef878fe495fb7e824d6259aa20b49d9edb2f4402194",
        strip_prefix = "nanogui-c6505300bb3036ec87ac68f5f1699c434c3d7fc6/",
        build_file = "@third_party//nanogui:package.BUILD",
    )
