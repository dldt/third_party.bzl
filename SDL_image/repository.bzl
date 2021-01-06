load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def SDL_image_repository():
    maybe(
        http_archive,
        name = "SDL_image",
        build_file = "@third_party//SDL_image:package.BUILD",
        sha256 = "eee0927d1e7819d57c623fe3e2b3c6761c77c474fe9bc425e8674d30ac049b1c",
        strip_prefix = "SDL2_image-2.0.5/",
        urls = [
            "https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.zip",
        ],
    )
