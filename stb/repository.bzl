load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def stb_repository():
    maybe(
        http_archive,
        name = "stb",
        urls = [
            "https://github.com/nothings/stb/archive/af1a5bc352164740c1cc1354942b1c6b72eacb8a.zip",
        ],
        sha256 = "e3d0edbecd356506d3d69b87419de2f9d180a98099134c6343177885f6c2cbef",
        strip_prefix = "stb-af1a5bc352164740c1cc1354942b1c6b72eacb8a/",
        build_file = "@third_party//stb:package.BUILD",
        patches = ["@third_party//stb:0001-Missing-header-in-stb_dxt.patch"],
        patch_args = ["-p1"],
    )
