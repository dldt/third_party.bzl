load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def materialx_repository():
    maybe(
        http_archive,
        name = "materialx",
        urls = [
            "https://github.com/materialx/MaterialX/releases/download/v1.38.3/MaterialX-1.38.3.zip",
        ],
        sha256 = "259a854f9fc4e279ccf37a3d35ae05cc4f33089dcd2dc08b812d2ca62cd1cc37",
        strip_prefix = "MaterialX-1.38.3/",
        build_file = "@third_party//materialx:package.BUILD",
        patches = ["@third_party//materialx:0001-View-Adapt-search-path-so-it-works-with-Bazel-s-runt.patch"],
        patch_args = ["-p1"],
    )
