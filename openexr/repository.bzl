load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def openexr_repository():
    maybe(
        http_archive,
        name = "openexr",
        urls = [
            # Make sure to also update version information in package.BUILD
            "https://github.com/AcademySoftwareFoundation/openexr/archive/v2.5.5.zip",
        ],
        sha256 = "0307a3d7e1fa1e77e9d84d7e9a8694583fbbbfd50bdc6884e2c96b8ef6b902de",
        strip_prefix = "openexr-2.5.5/",
        build_file = "@third_party//openexr:package.BUILD",
    )
