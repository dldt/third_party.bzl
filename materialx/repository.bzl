load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def materialx_repository():
    maybe(
        http_archive,
        name = "materialx",
        urls = [
            "https://github.com/AcademySoftwareFoundation/MaterialX/releases/download/v1.38.5/MaterialX-1.38.5.zip",
        ],
        sha256 = "ade089ed5e7ef59de9fb5ca0f9fe444ae5dbd2a533a81218fa621fe83f029b6b",
        strip_prefix = "MaterialX-1.38.5/",
        build_file = "@third_party//materialx:package.BUILD",
        patches = ["@third_party//materialx:0001-View-Adapt-search-path-so-it-works-with-Bazel-s-runt.patch"],
        patch_args = ["-p1"],
    )
