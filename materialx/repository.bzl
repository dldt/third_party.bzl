load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def materialx_repository():
    maybe(
        http_archive,
        name = "materialx",
        urls = [
            "https://github.com/materialx/MaterialX/releases/download/v1.38.0/MaterialX-1.38.0.zip",
        ],
        sha256 = "89dc824dc1e8b6a3d4e9fe6b86d364ed55e88d17a6c2259daee0e303ceb28aad",
        strip_prefix = "MaterialX-1.38.0/",
        build_file = "@third_party//materialx:package.BUILD",
        patches = ["@third_party//materialx:0001-View-Adapt-search-path-so-it-works-with-Bazel-s-runt.patch"],
        # 0001-View-GenShader-Adapt-search-path-so-it-works-with-Ba.patch"],
        patch_args = ["-p1"],
    )
