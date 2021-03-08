load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def magic_enum_repository():
    maybe(
        http_archive,
        name = "magic-enum",
        urls = [
            "https://github.com/Neargye/magic_enum/archive/v0.7.2.zip",
        ],
        sha256 = "189110e4975af67351bc918690dfc6df047afc11b704140615401a1c5d05619c",
        strip_prefix = "magic_enum-0.7.2/",
        build_file = "@third_party//magic-enum:package.BUILD",
    )
