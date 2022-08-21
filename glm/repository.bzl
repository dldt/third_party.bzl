load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glm_repository():
    maybe(
        http_archive,
        name = "glm",
        urls = [
            "https://github.com/g-truc/glm/archive/cc98465e3508535ba8c7f6208df934c156a018dc.zip",
        ],
        sha256 = "06d48e336857777d2d1f7da9ccd59e4b9d79720dbd70886d48837d19cda997bb",
        strip_prefix = "glm-cc98465e3508535ba8c7f6208df934c156a018dc/",
        build_file = "@third_party//glm:package.BUILD",
        patches = [
            "@third_party//glm:0001-Works-around-Visual-Studio-compiler-issue-with-std-c.patch",
        ],
        patch_args = ["-p1"],
    )
