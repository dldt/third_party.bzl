load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def materialx_repository():
    maybe(
        http_archive,
        name = "materialx",
        urls = [
            "https://github.com/materialx/MaterialX/releases/download/v1.38.1/MaterialX-1.38.1.zip",
        ],
        sha256 = "5e2f1347fe52fc49f96be7c29f45a27ab05f12a767dca9f9d2058920e695346e",
        strip_prefix = "MaterialX-1.38.1/",
        build_file = "@third_party//materialx:package.BUILD",
        patches = ["@third_party//materialx:0001-View-Adapt-search-path-so-it-works-with-Bazel-s-runt.patch"],
        patch_args = ["-p1"],
    )
