load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def magic_enum_repository():
    maybe(
        http_archive,
        name = "magic-enum",
        urls = [
            "https://github.com/Neargye/magic_enum/archive/v0.7.3.zip",
        ],
        sha256 = "764cce907d10923d449f1534e785b2a11b0a719d214410b1993da9f8e19ec418",
        strip_prefix = "magic_enum-0.7.3/",
        build_file = "@third_party//magic-enum:package.BUILD",
    )
