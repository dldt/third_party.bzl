load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pybind11_bazel_repository():
    maybe(
        http_archive,
        name = "pybind11_bazel",
        urls = [
            "https://github.com/pybind/pybind11_bazel/archive/16ed1b8f308d2b3dec9d7e6decaad49ce4d28b43.zip",
        ],
        sha256 = "f1044df0475bbe819e285785ee9599d94f98ac3c86ddfb73fe16cfeb568bb381",
        strip_prefix = "pybind11_bazel-16ed1b8f308d2b3dec9d7e6decaad49ce4d28b43/",
    )
