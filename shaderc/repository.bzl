load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def shaderc_repository():
    maybe(
        http_archive,
        name = "shaderc",
        urls = [
            "https://github.com/google/shaderc/archive/4089217d30c1f035c44a08255b875b5fea4f4bc5.zip",
        ],
        sha256 = "d0c0b34c94c824e6a720ecf507959782bc52272c71c503603aea6a4d041f6606",
        strip_prefix = "shaderc-4089217d30c1f035c44a08255b875b5fea4f4bc5/",
        build_file = "@third_party//shaderc:package.BUILD",
        patches = ["@third_party//shaderc:0001-Fix-recursive-call-being-generated-with-c-20.patch"],
        patch_args = ["-p1"],
    )
