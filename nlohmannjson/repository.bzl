load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nlohmannjson_repository():
    maybe(
        http_archive,
        name = "nlohmannjson",
        urls = [
            "https://github.com/nlohmann/json/releases/download/v3.11.2/include.zip",
        ],
        sha256 = "e5c7a9f49a16814be27e4ed0ee900ecd0092bfb7dbfca65b5a421b774dccaaed",
        build_file = "@third_party//nlohmannjson:package.BUILD",
    )
