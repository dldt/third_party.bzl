load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def lua_repository():
    maybe(
        http_archive,
        name = "lua",
        urls = [
            "http://www.lua.org/ftp/lua-5.4.2.tar.gz",
        ],
        sha256 = "11570d97e9d7303c0a59567ed1ac7c648340cd0db10d5fd594c09223ef2f524f",
        strip_prefix = "lua-5.4.2/",
        build_file = "@third_party//lua:package.BUILD",
    )
