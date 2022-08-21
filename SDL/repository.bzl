load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def SDL_repository():
    maybe(
        http_archive,
        name = "SDL",
        build_file = "@third_party//SDL:package.BUILD",
        sha256 = "74aaf31c730d537114f6919a45c9b693bbed9308211bf4c9613d252faf02e847",
        strip_prefix = "SDL2-2.24.1/",
        urls = [
            "https://www.libsdl.org/release/SDL2-2.24.1.zip",
        ],
        patch_cmds = ["rm -f include/SDL_config.h"],
        patch_cmds_win = ["rm -Force include/SDL_config.h"],
    )
