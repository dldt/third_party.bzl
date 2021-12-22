load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glfw_repository():
    maybe(
        http_archive,
        name = "glfw",
        urls = [
            "https://github.com/glfw/glfw/releases/download/3.3.6/glfw-3.3.6.zip",
        ],
        sha256 = "45537305d44c0a9f3612d4ec4a48414547cf854bff3ed613078f7ec648a12781",
        strip_prefix = "glfw-3.3.6/",
        build_file = "@third_party//glfw:package.BUILD",
    )
