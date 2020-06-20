load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nlohmannjson_repository():
    maybe(
        http_archive,
        name = "nlohmannjson",
        urls = [
            "https://github.com/nlohmann/json/releases/download/v3.8.0/include.zip",
        ],
        sha256 = "8590fbcc2346a3eefc341935765dd57598022ada1081b425678f0da9a939a3c0",
        build_file = "@third_party//nlohmannjson:package.BUILD",
    )
