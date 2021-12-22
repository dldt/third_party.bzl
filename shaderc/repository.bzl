load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def shaderc_repository():
    maybe(
        http_archive,
        name = "shaderc",
        urls = [
            "https://github.com/google/shaderc/archive/v2021.3.zip",
        ],
        sha256 = "2da892d648d8626ec221997db87417fdecec6113b970cdf72cfec3330e1f9646",
        strip_prefix = "shaderc-2021.3/",
        build_file = "@third_party//shaderc:package.BUILD",
        patches = ["@third_party//shaderc:0001-Fix-recursive-call-being-generated-with-c-20.patch"],
        patch_args = ["-p1"],
    )
