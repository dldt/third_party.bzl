load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spirv_headers_repository():
    maybe(
        http_archive,
        name = "spirv-headers",
        urls = [
            "https://github.com/KhronosGroup/SPIRV-Headers/archive/eddd4dfc930f1374a70797460240a501c7d333f7.zip",
        ],
        sha256 = "d3e81072460114993ce5952bcab66eb8f3a956ff55962f11b45fdfe9dbccd059",
        strip_prefix = "SPIRV-Headers-eddd4dfc930f1374a70797460240a501c7d333f7/",
    )
