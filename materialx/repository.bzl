load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def materialx_repository():
    maybe(
        http_archive,
        name = "materialx",
        urls = [
            "https://github.com/materialx/MaterialX/releases/download/v1.37.4/MaterialX-1.37.4.zip",
        ],
        sha256 = "77eb619696fd77bf43bcc45f3e03cfa6578358c6670705f8f20092c3253dc896",
        strip_prefix = "MaterialX-1.37.4/",
        build_file = "@third_party//materialx:package.BUILD",
        patches = ["@third_party//materialx:0001-View-GenShader-Adapt-search-path-so-it-works-with-Ba.patch"],
        patch_args = ["-p1"],
    )
