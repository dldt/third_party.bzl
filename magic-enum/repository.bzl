load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def magic_enum_repository():
    maybe(
        http_archive,
        name = "magic-enum",
        urls = [
            "https://github.com/Neargye/magic_enum/archive/v0.8.1.zip",
        ],
        sha256 = "c0de1b392ec9767fc7f9ef0f0fad7c20333f58d2dc484230705ba3bce8a1a316",
        strip_prefix = "magic_enum-0.8.1/",
        build_file = "@third_party//magic-enum:package.BUILD",
    )
