load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_reflect_repository():
    maybe(
        http_archive,
        name = "spirv-reflect",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Reflect/archive/c955ab3138b1d4a38956c61ea47e1d626392baf8.zip",
        ],
        sha256 = "326970cad401f4e3e01a4742ae961b1e451c57a48b17804ec0ab411855f490ea",
        strip_prefix = "SPIRV-Reflect-c955ab3138b1d4a38956c61ea47e1d626392baf8/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
