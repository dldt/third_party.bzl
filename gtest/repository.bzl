load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gtest_repository():
    maybe(
        http_archive,
        name = "gtest",
        urls = [
            "https://github.com/google/googletest/archive/release-1.10.0.zip",
        ],
        sha256 = "94c634d499558a76fa649edb13721dce6e98fb1e7018dfaeba3cd7a083945e91",
        strip_prefix = "googletest-release-1.10.0/",
        patches = [
            "@third_party//gtest:std_resultof.patch",
            "@third_party//gtest:msvc_pp.patch",
            "@third_party//gtest:msvc_pp1.patch",
            "@third_party//gtest:msvc_pp2.patch",
            "@third_party//gtest:msvc_pp3.patch",
            "@third_party//gtest:msvc_pp4.patch",
        ],
        patch_args = ["-p1"],
    )
