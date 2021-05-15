load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_tools_repository():
    maybe(
        http_archive,
        name = "spirv-tools",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Tools/archive/f0d110e3058bba9a31f9bd0a8727bdd0a559af82.zip",
        ],
        sha256 = "5756e12594185dae692680fe1bced7ac59bfca1eb0a717cc0cfbc85ce86565e8",
        strip_prefix = "SPIRV-Tools-f0d110e3058bba9a31f9bd0a8727bdd0a559af82/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
        patches = [
            "@third_party//spirv-tools:0001-small_vector-Fix-C-20-comparison-operator-issue.patch",
            "@third_party//spirv-tools:0002-Workaround-warning-as-error.patch"
        ],
        patch_args = ["-p1"],
    )
