load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nanovg_repository():
    maybe(
        http_archive,
        name = "nanovg",
        urls = [
            "https://github.com/memononen/nanovg/archive/077b65e0cf3e22ee4f588783e319b19b0a608065.zip",
        ],
        sha256 = "1264d887c21f2b08abdef1e2ebd4ce862ef3496e9a4482738431d339f135c76c",
        strip_prefix = "nanovg-077b65e0cf3e22ee4f588783e319b19b0a608065/",
        build_file = "@third_party//nanovg:package.BUILD",
    )
