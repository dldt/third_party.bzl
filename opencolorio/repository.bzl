load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def opencolorio_repository():
    maybe(
        http_archive,
        name = "opencolorio",
        build_file = "@third_party//opencolorio:package.BUILD",
        sha256 = "bf67a92e6d68df8c0868e194d16f29eac32cb75bde4573deb6192d1d9ff08095",
        strip_prefix = "OpenColorIO-2.1.1/",
        urls = [
            "https://github.com/AcademySoftwareFoundation/OpenColorIO/archive/v2.1.1.zip",
        ],
    )
