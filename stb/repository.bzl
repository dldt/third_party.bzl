load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def stb_repository():
    maybe(
        http_archive,
        name = "stb",
        urls = [
            "https://github.com/nothings/stb/archive/b42009b3b9d4ca35bc703f5310eedc74f584be58.zip",
        ],
        sha256 = "9dd7b5ff7538ecc8c65b9f392a0ed48f91c80a19b6f3f5a24cf1e687893fbe6b",
        strip_prefix = "stb-b42009b3b9d4ca35bc703f5310eedc74f584be58/",
        build_file = "@third_party//stb:package.BUILD",
    )
