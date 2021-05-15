load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def lua_repository():
    maybe(
        http_archive,
        name = "lua",
        urls = [
            "https://www.lua.org/ftp/lua-5.4.3.tar.gz",
        ],
        sha256 = "f8612276169e3bfcbcfb8f226195bfc6e466fe13042f1076cbde92b7ec96bbfb",
        strip_prefix = "lua-5.4.3/",
        build_file = "@third_party//lua:package.BUILD",
    )
