load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glm_repository():
    maybe(
        http_archive,
        name = "glm",
        urls = [
            "https://github.com/g-truc/glm/archive/64be09e1b1390ddcd0f79f38531855a9de26ad1f.zip",
        ],
        sha256 = "609379a21dc12513f70c00a7ccb4521e002d9c9dd435c37d7789670a9a8014f4",
        strip_prefix = "glm-64be09e1b1390ddcd0f79f38531855a9de26ad1f/",
        build_file = "@third_party//glm:package.BUILD",
        patches = [
            "@third_party//glm:0001-Works-around-Visual-Studio-compiler-issue-with-std-c.patch",
            "@third_party//glm:0002-Fixed-the-SIMD-implementation-of-compute_vec4_equal-.patch",
            "@third_party//glm:0003-Fixed-axisAngle-implementation.patch",
            "@third_party//glm:0004-matrix-decompose-fix-bug.patch",
        ],
        patch_args = ["-p1"],
    )
