load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def eigen_repository():
    maybe(
        http_archive,
        name = "eigen",
        urls = [
            "https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.zip",
        ],
        sha256 = "1ccaabbfe870f60af3d6a519c53e09f3dcf630207321dffa553564a8e75c4fc8",
        strip_prefix = "eigen-3.4.0/",
        build_file = "@third_party//eigen:package.BUILD",
        #patches = ["@third_party//eigen:0001-Invoke-result-c++17.patch"],
        patch_args = ["-p1"],
    )
