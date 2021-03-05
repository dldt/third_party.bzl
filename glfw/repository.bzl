load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glfw_repository():
    maybe(
        http_archive,
        name = "glfw",
        urls = [
            "https://github.com/glfw/glfw/releases/download/3.3.3/glfw-3.3.3.zip",
        ],
        sha256 = "723087ad45b40cd333be7d1a2cd5e09a28facb7f3acdb69f3e5613bd20543977",
        strip_prefix = "glfw-3.3.3/",
        build_file = "@third_party//glfw:package.BUILD",
    )
