load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tinygltf_repository():
    maybe(
        http_archive,
        name = "tinygltf",
        urls = [
            "https://github.com/syoyo/tinygltf/archive/v2.5.0.zip",
        ],
        sha256 = "c75a242951c1324f6c58263e546d97691c566ac7285c4eb0b7d870227096f05f",
        strip_prefix = "tinygltf-2.5.0/",
        build_file = "@third_party//tinygltf:package.BUILD",
        patches = ["@third_party//tinygltf:0001-use-external-nlohmann-json.patch"],
        patch_args = ["-p1"],
    )
