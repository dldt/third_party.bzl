load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tinygltf_repository():
    maybe(
        http_archive,
        name = "tinygltf",
        urls = [
            "https://github.com/syoyo/tinygltf/archive/3bddc09af4a7243d3b0ebbdd8dab8fa3893657c6.zip",
        ],
        sha256 = "4e5cd78f1f1a620faa649730d9d5bfa43bf442cc5da0032e6d03aa49ee7fd02f",
        strip_prefix = "tinygltf-3bddc09af4a7243d3b0ebbdd8dab8fa3893657c6/",
        build_file = "@third_party//tinygltf:package.BUILD",
        patches = ["@third_party//tinygltf:0001-use-external-nlohmann-json.patch"],
        patch_args = ["-p1"],
    )
