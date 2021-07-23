load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glm_repository():
    maybe(
        http_archive,
        name = "glm",
        urls = [
            "https://github.com/g-truc/glm/archive/2759ceca04db5c36d2806a2280f51b83a6749c12.zip",
        ],
        sha256 = "107b7b881dbfaed30db73437815a199e66a6b3950966a144ae1600c75bc03967",
        strip_prefix = "glm-2759ceca04db5c36d2806a2280f51b83a6749c12/",
        build_file = "@third_party//glm:package.BUILD",
        patches = [
            "@third_party//glm:0001-Works-around-Visual-Studio-compiler-issue-with-std-c.patch",
        ],
        patch_args = ["-p1"],
    )
