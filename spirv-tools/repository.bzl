load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_tools_repository():
    maybe(
        http_archive,
        name = "spirv-tools",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Tools/archive/b2db20a7e8bf10f9da176dccf58b9c7aaaec2ccd.zip",
        ],
        sha256 = "7c3231476150087eefbc4d162d8885964e0d6a2bcf2bc51c1369d1bc27d081e2",
        strip_prefix = "SPIRV-Tools-b2db20a7e8bf10f9da176dccf58b9c7aaaec2ccd/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
