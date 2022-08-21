load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_reflect_repository():
    maybe(
        http_archive,
        name = "spirv-reflect",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Reflect/archive/b68b5a8a5d8ab5fce79e6596f3a731291046393a.zip",
        ],
        sha256 = "65fb97952e07b527d36f93b0b910e0eafa6230babed5c82ceca31020c2b8c185",
        strip_prefix = "SPIRV-Reflect-b68b5a8a5d8ab5fce79e6596f3a731291046393a/",
        patches = ["@third_party//spirv-reflect:0001-CHANGES-does-not-exist-anymore.patch"],
        patch_args = ["-p1"],
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
