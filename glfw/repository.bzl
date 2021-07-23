load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glfw_repository():
    maybe(
        http_archive,
        name = "glfw",
        urls = [
            "https://github.com/glfw/glfw/releases/download/3.3.4/glfw-3.3.4.zip",
        ],
        sha256 = "bbd2c42c660b725e9755eb417e40b373f0d4c03138c9b2e210d02cd308bd99cd",
        strip_prefix = "glfw-3.3.4/",
        build_file = "@third_party//glfw:package.BUILD",
    )
