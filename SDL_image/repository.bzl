load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def SDL_image_repository():
    maybe(
        http_archive,
        name = "SDL_image",
        build_file = "@third_party//SDL_image:package.BUILD",
        sha256 = "efe3c229853d0d40c35e5a34c3f532d5d9728f0abc623bc62c962bcef8754205",
        strip_prefix = "SDL2_image-2.6.2/",
        urls = [
            "https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.6.2.zip",
        ],
    )
