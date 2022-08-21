load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glfw_repository():
    maybe(
        http_archive,
        name = "glfw",
        urls = [
            "https://github.com/glfw/glfw/releases/download/3.3.8/glfw-3.3.8.zip",
        ],
        sha256 = "4d025083cc4a3dd1f91ab9b9ba4f5807193823e565a5bcf4be202669d9911ea6",
        strip_prefix = "glfw-3.3.8/",
        build_file = "@third_party//glfw:package.BUILD",
    )
