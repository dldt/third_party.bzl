load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spdlog_repository():
    maybe(
        http_archive,
        name = "spdlog",
        urls = [
            "https://github.com/gabime/spdlog/archive/v1.9.1.zip",
        ],
        sha256 = "1a383a1d6bf604759c310a0b464a83afc54cc3147192d61c3d0c59695b38ff79",
        strip_prefix = "spdlog-1.9.1/",
        build_file = "@third_party//spdlog:package.BUILD",
        #patches = ["@third_party//spdlog:0001-Fix-build-with-latest-fmtlib-and-C-20.patch"],
        #patch_args = ["-p1"],
    )
