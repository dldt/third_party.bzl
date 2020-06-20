load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nlohmannjson_repository():
    maybe(
        http_archive,
        name = "nlohmannjson",
        urls = [
            "https://github.com/nlohmann/json/releases/download/v3.9.1/include.zip",
        ],
        sha256 = "6bea5877b1541d353bd77bdfbdb2696333ae5ed8f9e8cc22df657192218cad91",
        build_file = "@third_party//nlohmannjson:package.BUILD",
    )
