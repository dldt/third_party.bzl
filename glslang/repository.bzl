load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/9325cc013e3df4f85a457c2d43e831a9e93713e1.zip",
        ],
        sha256 = "b8017d6547ab587bd013403bff351b1ba13800e4f9987bf66405433621fd68c3",
        strip_prefix = "glslang-9325cc013e3df4f85a457c2d43e831a9e93713e1/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
    )
