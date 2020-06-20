load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glm_repository():
    maybe(
        http_archive,
        name = "glm",
        urls = [
            "https://github.com/g-truc/glm/releases/download/0.9.9.8/glm-0.9.9.8.zip",
        ],
        sha256 = "37e2a3d62ea3322e43593c34bae29f57e3e251ea89f4067506c94043769ade4c",
        strip_prefix = "glm/",
        build_file = "@third_party//glm:package.BUILD",
    )
