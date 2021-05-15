load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glslang_repository():
    maybe(
        http_archive,
        name = "glslang",
        urls = [
            "https://github.com/KhronosGroup/glslang/archive/202c8abae0a3cb1ae725b3c97e3be3b24d1dadb0.zip",
        ],
        sha256 = "fa78e65cb7c5c9c49014b99bbdc2dafb2a1475e9438b3d46fcbcd5f0111849aa",
        strip_prefix = "glslang-202c8abae0a3cb1ae725b3c97e3be3b24d1dadb0/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
        },
        patches = ["@third_party//glslang:0001-Export-CHANGES.md-so-that-shaderc-and-other-can-extr.patch"],
        patch_args = ["-p1"],
    )
