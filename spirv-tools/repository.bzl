load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_tools_repository():
    maybe(
        http_archive,
        name = "spirv-tools",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Tools/archive/3c1a14b2b609ae5a352e39ef6b5baf8f64c32ec7.zip",
        ],
        sha256 = "f34b9ec63c57ba9bb03d2b51ef78de46d4db53888f81e0bdfe763b170b317ec3",
        strip_prefix = "SPIRV-Tools-3c1a14b2b609ae5a352e39ef6b5baf8f64c32ec7/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
