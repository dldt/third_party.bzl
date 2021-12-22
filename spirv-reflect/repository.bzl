load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_reflect_repository():
    maybe(
        http_archive,
        name = "spirv-reflect",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Reflect/archive/173ae4d9bbcc8fd0307bea9f126cb50619ceff23.zip",
        ],
        sha256 = "92701812a3ec67744732a430861c775d66cf471a3a7f70405cfb5e3fd6c4aed3",
        strip_prefix = "SPIRV-Reflect-173ae4d9bbcc8fd0307bea9f126cb50619ceff23/",
        patches = ["@third_party//spirv-reflect:0001-CHANGES-does-not-exist-anymore.patch"],
        patch_args = ["-p1"],
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
