load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/10-11.0.0.zip",
        ],
        sha256 = "224cbb602de551d1f7bff4108ff0c44be71a9a7ebf8c5821034941c608d75adb",
        strip_prefix = "glslang-10-11.0.0/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
