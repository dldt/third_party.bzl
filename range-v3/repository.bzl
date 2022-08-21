load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def range_v3_repository():
    maybe(
        http_archive,
        name = "range-v3",
        urls = [
            "https://github.com/ericniebler/range-v3/archive/234164b84797f2a6ec97fdfb4d1c5dbfb927ca35.zip",
        ],
        sha256 = "bca2539f4110acbcf24245c66bf3e978c773591583c354f6745689287731b507",
        strip_prefix = "range-v3-234164b84797f2a6ec97fdfb4d1c5dbfb927ca35/",
        build_file = "@third_party//range-v3:package.BUILD",
        patches = ["@third_party//range-v3:0001-Workaround-conflict-with-Xlib.h-define.patch"],
        patch_args = ["-p1"],
    )
