load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fmt_repository():
    maybe(
        http_archive,
        name = "fmt",
        urls = [
            "https://github.com/fmtlib/fmt/archive/7.1.3.zip",
        ],
        sha256 = "50f2fd9f697f89726ae3c7efe84ae48c9e03158a2958eea496eeaa0fb190adb6",
        strip_prefix = "fmt-7.1.3/",
        build_file = "@third_party//fmt:package.BUILD",
    )
