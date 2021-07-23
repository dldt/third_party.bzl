load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def stb_repository():
    maybe(
        http_archive,
        name = "stb",
        urls = [
            "https://github.com/nothings/stb/archive/3a1174060a7dd4eb652d4e6854bc4cd98c159200.zip",
        ],
        sha256 = "9313f6871195b97771ce7da1feae0b3d92c7936456f13099edb54a78096ca93c",
        strip_prefix = "stb-3a1174060a7dd4eb652d4e6854bc4cd98c159200/",
        build_file = "@third_party//stb:package.BUILD",
        patches = ["@third_party//stb:0001-Missing-header-in-stb_dxt.patch"],
        patch_args = ["-p1"],
    )
