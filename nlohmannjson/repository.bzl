load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nlohmannjson_repository():
    maybe(
        http_archive,
        name = "nlohmannjson",
        urls = [
            "https://github.com/nlohmann/json/releases/download/v3.10.4/include.zip",
        ],
        sha256 = "62c585468054e2d8e7c2759c0d990fd339d13be988577699366fe195162d16cb",
        build_file = "@third_party//nlohmannjson:package.BUILD",
    )
