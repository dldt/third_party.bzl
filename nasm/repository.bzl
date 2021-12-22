load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nasm_repository():
    maybe(
        http_archive,
        name = "nasm",
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/www.nasm.us/pub/nasm/releasebuilds/2.15.05/nasm-2.15.05.tar.bz2",
            "https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/nasm-2.15.05.tar.bz2",
        ],
        sha256 = "3c4b8339e5ab54b1bcb2316101f8985a5da50a3f9e504d43fa6f35668bee2fd0",
        strip_prefix = "nasm-2.15.05",
        build_file = "@third_party//nasm:package.BUILD",
        # system_build_file = "//third_party/nasm:BUILD.system",
    )
