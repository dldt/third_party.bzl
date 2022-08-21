load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def lua_repository():
    maybe(
        http_archive,
        name = "lua",
        urls = [
            "https://www.lua.org/ftp/lua-5.4.4.tar.gz",
        ],
        sha256 = "164c7849653b80ae67bec4b7473b884bf5cc8d2dca05653475ec2ed27b9ebf61",
        strip_prefix = "lua-5.4.4/",
        build_file = "@third_party//lua:package.BUILD",
    )
