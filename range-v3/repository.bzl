load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def range_v3_repository():
    maybe(
        http_archive,
        name = "range-v3",
        urls = [
            "https://github.com/ericniebler/range-v3/archive/0487cca29e352e8f16bbd91fda38e76e39a0ed28.zip",
        ],
        sha256 = "e3992d30629d058e5918b9721d6fbdbc20f72b298cdf5cfb96e798fc4b5b54fe",
        strip_prefix = "range-v3-0487cca29e352e8f16bbd91fda38e76e39a0ed28/",
        build_file = "@third_party//range-v3:package.BUILD",
        patches = ["@third_party//range-v3:0001-Workaround-conflict-with-Xlib.h-define.patch"],
        patch_args = ["-p1"],
    )
