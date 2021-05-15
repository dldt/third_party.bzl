load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glm_repository():
    maybe(
        http_archive,
        name = "glm",
        urls = [
            "https://github.com/g-truc/glm/archive/70f67cb45741be063a15d3cc2da3f13b3f07836b.zip",
        ],
        sha256 = "f046a24c47b328401077aca56910d2e8288c11e40ba0b83d63619f58df9be6be",
        strip_prefix = "glm-70f67cb45741be063a15d3cc2da3f13b3f07836b/",
        build_file = "@third_party//glm:package.BUILD",
        patches = [
            "@third_party//glm:0001-Works-around-Visual-Studio-compiler-issue-with-std-c.patch",
        ],
        patch_args = ["-p1"],
    )
