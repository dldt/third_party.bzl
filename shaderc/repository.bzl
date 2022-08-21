load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def shaderc_repository():
    maybe(
        http_archive,
        name = "shaderc",
        urls = [
            "https://github.com/google/shaderc/archive/v2022.2.zip",
        ],
        sha256 = "8e2f35c06898db025caeb4ae45151d9132401e4838cf305fa8c41c48eec4deb6",
        strip_prefix = "shaderc-2022.2/",
        build_file = "@third_party//shaderc:package.BUILD",
        patches = ["@third_party//shaderc:0001-Fix-recursive-call-being-generated-with-c-20.patch"],
        patch_args = ["-p1"],
    )
