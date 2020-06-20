load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glfw_repository():
    maybe(
        http_archive,
        name = "glfw",
        urls = [
            "https://github.com/glfw/glfw/releases/download/3.3.2/glfw-3.3.2.zip",
        ],
        sha256 = "08a33a512f29d7dbf78eab39bd7858576adcc95228c9efe8e4bc5f0f3261efc7",
        strip_prefix = "glfw-3.3.2/",
        build_file = "@third_party//glfw:package.BUILD",
    )
