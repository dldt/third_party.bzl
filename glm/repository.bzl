load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glm_repository():
    maybe(
        http_archive,
        name = "glm",
        urls = [
            "https://github.com/g-truc/glm/releases/download/0.9.9.7/glm-0.9.9.7.zip",
        ],
        sha256 = "6b79c3d06d9745d1cce3f38c0c15666596f9aefff25ddb74df3af0a02f011ee1",
        strip_prefix = "glm/",
        build_file = "@third_party//glm:package.BUILD",
    )
