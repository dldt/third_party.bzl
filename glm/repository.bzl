load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glm_repository():
    maybe(
        http_archive,
        name = "glm",
        urls = [
            "https://github.com/g-truc/glm/archive/6ad79aae3eb5bf809c30bf1168171e9e55857e45.zip",
        ],
        sha256 = "9a147a2b58df9fc30ec494468f6b974489a72aecbaa9062dd1d375379e011b70",
        strip_prefix = "glm-6ad79aae3eb5bf809c30bf1168171e9e55857e45/",
        build_file = "@third_party//glm:package.BUILD",
        patches = [
            "@third_party//glm:0001-Works-around-Visual-Studio-compiler-issue-with-std-c.patch",
        ],
        patch_args = ["-p1"],
    )
