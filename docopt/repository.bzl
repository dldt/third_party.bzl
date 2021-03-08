load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def docopt_repository():
    maybe(
        http_archive,
        name = "docopt",
        urls = [
            "https://github.com/docopt/docopt.cpp/archive/6f5de76970be94a6f1e4556d1716593100e285d2.zip",
        ],
        sha256 = "1d23aa3cfa1f3f6bae2b1f64688aa572a2950eeb7c88a6299f6432c693c16e9f",
        strip_prefix = "docopt.cpp-6f5de76970be94a6f1e4556d1716593100e285d2/",
        build_file = "@third_party//docopt:package.BUILD",
    )
