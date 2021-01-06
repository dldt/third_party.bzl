load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def SDL_repository():
    maybe(
        http_archive,
        name = "SDL",
        build_file = "@third_party//SDL:package.BUILD",
        sha256 = "2c1e870d74e13dfdae870600bfcb6862a5eab4ea5b915144aff8d75a0f9bf046",
        strip_prefix = "SDL2-2.0.14/",
        urls = [
            "https://www.libsdl.org/release/SDL2-2.0.14.zip",
        ],
        patch_cmds = ["rm -f include/SDL_config.h"],
        patch_cmds_win = ["rm -Force include/SDL_config.h"],
    )
