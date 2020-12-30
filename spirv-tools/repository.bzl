load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_tools_repository():
    maybe(
        http_archive,
        name = "spirv-tools",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Tools/archive/17ffa89097b26efeb323e6963220326b5ffb2baf.zip",
        ],
        sha256 = "fccd349b74b29cdf357f9538bf24c9834bccc0cf75b45f005ac65a3fc6e1052a",
        strip_prefix = "SPIRV-Tools-17ffa89097b26efeb323e6963220326b5ffb2baf/",
        repo_mapping = {
            "@spirv_headers": "@spirv-headers",
            "@com_google_effcee": "@effcee",
            "@com_google_googletest": "@gtest",
            "@com_googlesource_code_re2": "@re2",
        },
    )
