load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def inja_repository():
    maybe(
        http_archive,
        name = "inja",
        urls = [
            "https://github.com/pantor/inja/archive/v3.3.0.zip",
        ],
        sha256 = "a95e95ff39961be429d564689d265a2eb2f269cb180bb0028c842a7484916cb6",
        strip_prefix = "inja-3.3.0/",
        build_file = "@third_party//inja:package.BUILD",
    )
