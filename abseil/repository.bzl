load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def abseil_repository():
    maybe(
        http_archive,
        name = "abseil",
        urls = [
            "https://github.com/abseil/abseil-cpp/archive/20200923.2.zip",
        ],
        sha256 = "306639352ec60dcbfc695405e989e1f63d0e55001582a5185b0a8caf2e8ea9ca",
        strip_prefix = "abseil-cpp-20200923.2/",
        repo_mapping = {
            "@com_google_googletest": "@gtest",
            "@com_github_google_benchmark": "@benchmark",
        },
        patches = ["@third_party//abseil:std_resultof.patch"],
        patch_args = ["-p1"],
    )
