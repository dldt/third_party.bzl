load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spdlog_repository():
    maybe(
        http_archive,
        name = "spdlog",
        urls = [
            "https://github.com/gabime/spdlog/archive/v1.8.1.zip",
        ],
        sha256 = "eed0095a1d52d08a0834feda146d4f9148fa4125620cd04d8ea57e0238fa39cd",
        strip_prefix = "spdlog-1.8.1/",
        build_file = "@third_party//spdlog:package.BUILD",
        patches = ["@third_party//spdlog:0001-Make-sure-parameters-are-correctly-forwarded.patch"],
        patch_args = ["-p1"],
    )
