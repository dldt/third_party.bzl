load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def brigand_repository():
    maybe(
        http_archive,
        name = "brigand",
        urls = [
            "https://github.com/edouarda/brigand/archive/cpp11-1.3.0.zip",
        ],
        sha256 = "abfc46cd99ff53a689bd817bd87365bb175782768adf7225a63057bb11885055",
        strip_prefix = "brigand-cpp11-1.3.0/",
        build_file = "@third_party//brigand:package.BUILD",
    )
