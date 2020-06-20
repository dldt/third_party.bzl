load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/8.13.3743.zip",
        ],
        sha256 = "ea25757e0535c90ca8c00b032953d170b59993d20c8c24c70ca87d9161857789",
        strip_prefix = "glslang-8.13.3743/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
