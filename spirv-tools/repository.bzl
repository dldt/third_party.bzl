load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_tools_repository():
    maybe(
        http_archive,
        name = "spirv-tools",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Tools/archive/f7043c0de6712bc9afa8beabe0d10dcb40b1811e.zip",
        ],
        sha256 = "cadb6d9a8e042b832f7bd4eba036912d354ea1f0dad5bdf88864c1b702881cd7",
        strip_prefix = "SPIRV-Tools-f7043c0de6712bc9afa8beabe0d10dcb40b1811e/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
        patches = ["@third_party//spirv-tools:0001-small_vector-Fix-C-20-comparison-operator-issue.patch"],
        patch_args = ["-p1"],
    )
