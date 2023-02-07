load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def SDL_repository():
    maybe(
        http_archive,
        name = "SDL",
        build_file = "@third_party//SDL:package.BUILD",
        sha256 = "3e46df1eb1be30448cf7c7f3fc0991980f0ef867c2412ab7bc925b631e5dc09c",
        strip_prefix = "SDL2-2.26.3/",
        urls = [
            "https://github.com/libsdl-org/SDL/releases/download/release-2.26.3/SDL2-2.26.3.zip",
        ],
        patch_cmds = ["rm -f include/SDL_config.h"],
        patch_cmds_win = ["rm -Force include/SDL_config.h"],
    )
