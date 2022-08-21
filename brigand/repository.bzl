load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def brigand_repository():
    maybe(
        http_archive,
        name = "brigand",
        urls = [
            "https://github.com/edouarda/brigand/archive/9e931f7b6daf9c7775459835f3b45f694dc20cf2.zip",
        ],
        sha256 = "93eab0d57653d4426ebf33dd1e870b411defa4d60e3a21258976fc86472b20c4",
        strip_prefix = "brigand-9e931f7b6daf9c7775459835f3b45f694dc20cf2/",
        build_file = "@third_party//brigand:package.BUILD",
    )
