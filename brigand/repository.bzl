load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def brigand_repository():
    maybe(
        http_archive,
        name = "brigand",
        urls = [
            "https://github.com/edouarda/brigand/archive/1c398e4f1e817ab195e4cd6fbb03c18cb386eea3.zip",
        ],
        sha256 = "65922a73ceb924ec56b4050ac08903837ede5d477df21e63769b6e05ff545a28",
        strip_prefix = "brigand-1c398e4f1e817ab195e4cd6fbb03c18cb386eea3/",
        build_file = "@third_party//brigand:package.BUILD",
    )
