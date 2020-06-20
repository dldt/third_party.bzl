load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _boost_repo_rule_impl(ctx):
    ctx.file("WORKSPACE", content = """workspace(name = "{}")""".format(ctx.name))
    ctx.file("BUILD", content = ctx.attr.build_file_content)

_boost_repo_rule = repository_rule(
    _boost_repo_rule_impl,
    attrs = {
        "build_file_content": attr.string(mandatory = True),
    },
)

def boost_repository():
    http_archive(
        name = "org_boost__callable_traits",
        urls = ["https://github.com/boostorg/callable_traits/archive/boost-1.73.0.zip"],
        strip_prefix = "callable_traits-boost-1.73.0/",
        sha256 = "c5193c59cf19131747962f3dfcec923eaddb7505d3717a7972fb3bfe05bc1167",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "callable_traits",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = [],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__compatibility",
        urls = ["https://github.com/boostorg/compatibility/archive/boost-1.73.0.zip"],
        strip_prefix = "compatibility-boost-1.73.0/",
        sha256 = "fbe184e91e1ad7527afa94c6a6c7d4b6b71016ee80a6315c011680cd469e63ed",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "compatibility",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = [],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__config",
        urls = ["https://github.com/boostorg/config/archive/boost-1.73.0.zip"],
        strip_prefix = "config-boost-1.73.0/",
        sha256 = "21de73255ee250066b7111ee158d5c9d8a619ea6e91b7489a929ea7cc9190ed6",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "config",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = [],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__assert",
        urls = ["https://github.com/boostorg/assert/archive/boost-1.73.0.zip"],
        strip_prefix = "assert-boost-1.73.0/",
        sha256 = "10c16608df86dc438ec9d20598b63ad809e928ee1e545371f6f3f807264184bb",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "assert",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__core",
        urls = ["https://github.com/boostorg/core/archive/boost-1.73.0.zip"],
        strip_prefix = "core-boost-1.73.0/",
        sha256 = "bac18ea8b204cfca07943e6ba6951cfc22286fce05e7d7dad6f6f150b09dc217",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "core",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__bind",
        urls = ["https://github.com/boostorg/bind/archive/boost-1.73.0.zip"],
        strip_prefix = "bind-boost-1.73.0/",
        sha256 = "2267677ba79c8fcd3a8f7b914106642850f99373daac76fa815e3676dbb34bc4",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "bind",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__hof",
        urls = ["https://github.com/boostorg/hof/archive/boost-1.73.0.zip"],
        strip_prefix = "hof-boost-1.73.0/",
        sha256 = "f83a975f2f95c06a800790d51de5731c3d447843500e2f16db0cb071d67c83d9",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "hof",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = [],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__io",
        urls = ["https://github.com/boostorg/io/archive/boost-1.73.0.zip"],
        strip_prefix = "io-boost-1.73.0/",
        sha256 = "38f11232becbe175ec89a2ea980535eb30d56d055212ba1f291d7e0ed3031a1e",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "io",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__logic",
        urls = ["https://github.com/boostorg/logic/archive/boost-1.73.0.zip"],
        strip_prefix = "logic-boost-1.73.0/",
        sha256 = "aeefa3e1001d210d7cc77dfd57e0f75728a72295fe6bdc8c40bdd4c63c859338",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "logic",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__mp11",
        urls = ["https://github.com/boostorg/mp11/archive/boost-1.73.0.zip"],
        strip_prefix = "mp11-boost-1.73.0/",
        sha256 = "e4e7090a50773664272f9f9a64b6f408987b996dc0a1d5c17b1cba228ab16c63",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "mp11",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = [],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__polygon",
        urls = ["https://github.com/boostorg/polygon/archive/boost-1.73.0.zip"],
        strip_prefix = "polygon-boost-1.73.0/",
        sha256 = "c90c7c0b99aa2a296885ad488e8dcb4de1003a3d4b60384566c11a85df754fcd",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "polygon",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__predef",
        urls = ["https://github.com/boostorg/predef/archive/boost-1.73.0.zip"],
        strip_prefix = "predef-boost-1.73.0/",
        sha256 = "d34c5a533ebcc5c8d519cd8898db3f38dd939b5623164a91d1d4be93d9133971",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "predef",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = [],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__preprocessor",
        urls = ["https://github.com/boostorg/preprocessor/archive/boost-1.73.0.zip"],
        strip_prefix = "preprocessor-boost-1.73.0/",
        sha256 = "92b1430b46e5efd1f4ff94484c72868e4835f91192cfd777f5fc5efcce270ec3",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "preprocessor",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = [],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__static_assert",
        urls = ["https://github.com/boostorg/static_assert/archive/boost-1.73.0.zip"],
        strip_prefix = "static_assert-boost-1.73.0/",
        sha256 = "ff1e25f64666b845e9d0a1725f6fcc6c9b82897fe8e1cc6377ec2f03c93d4270",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "static_assert",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__align",
        urls = ["https://github.com/boostorg/align/archive/boost-1.73.0.zip"],
        strip_prefix = "align-boost-1.73.0/",
        sha256 = "f261670dc499a1dab2e04d93a4eefbfbbb04938fac721a87a43df483c55ce1a9",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "align",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__static_assert//:static_assert'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__move",
        urls = ["https://github.com/boostorg/move/archive/boost-1.73.0.zip"],
        strip_prefix = "move-boost-1.73.0/",
        sha256 = "1da5661a12a9dbe096ae5f66af9e63e23b901cea80b387de8352667428f15ecc",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "move",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__static_assert//:static_assert'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__throw_exception",
        urls = ["https://github.com/boostorg/throw_exception/archive/boost-1.73.0.zip"],
        strip_prefix = "throw_exception-boost-1.73.0/",
        sha256 = "02b8c92a1d408f2b437357e529df556413595eadd15f3307a00e500561bf0f69",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "throw_exception",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__array",
        urls = ["https://github.com/boostorg/array/archive/boost-1.73.0.zip"],
        strip_prefix = "array-boost-1.73.0/",
        sha256 = "71912f1aa43369545d4074bc96e7546cffbd9a6240ed4b6c03779ad74ebfd802",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "array",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__integer",
        urls = ["https://github.com/boostorg/integer/archive/boost-1.73.0.zip"],
        strip_prefix = "integer-boost-1.73.0/",
        sha256 = "a9bbfcdad1290f083fefe9d8311cb7cea230fe9bb086a2c9eba5bf9386d1e7bd",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "integer",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__type_traits",
        urls = ["https://github.com/boostorg/type_traits/archive/boost-1.73.0.zip"],
        strip_prefix = "type_traits-boost-1.73.0/",
        sha256 = "23fee648d9631f38295ccbba41c59a62142936f9999d86eb19da3a526e20825e",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "type_traits",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__static_assert//:static_assert'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__atomic",
        urls = ["https://github.com/boostorg/atomic/archive/boost-1.73.0.zip"],
        strip_prefix = "atomic-boost-1.73.0/",
        sha256 = "3ce2f309d448f9a2bddf854be30d52eb6dbc849f97dae7791d1c7b219d74b186",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "atomic",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__concept_check",
        urls = ["https://github.com/boostorg/concept_check/archive/boost-1.73.0.zip"],
        strip_prefix = "concept_check-boost-1.73.0/",
        sha256 = "7fd3caf7cbdda4c4f1f37d91c326686ce99ad34d308e0e2e8dcc76268bab3744",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "concept_check",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__preprocessor//:preprocessor', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__circular_buffer",
        urls = ["https://github.com/boostorg/circular_buffer/archive/boost-1.73.0.zip"],
        strip_prefix = "circular_buffer-boost-1.73.0/",
        sha256 = "48bacb20f1dadf092118a7d2d1ab6353b0a8ae31e1a4f167488606a0a1af804c",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "circular_buffer",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__move//:move', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__crc",
        urls = ["https://github.com/boostorg/crc/archive/boost-1.73.0.zip"],
        strip_prefix = "crc-boost-1.73.0/",
        sha256 = "dbf438adaf4f3151a9a6c4ee7c1e8d9e8dad5b35162a7433bbf03d1370907d56",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "crc",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__config//:config', '@org_boost__integer//:integer', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__detail",
        urls = ["https://github.com/boostorg/detail/archive/boost-1.73.0.zip"],
        strip_prefix = "detail-boost-1.73.0/",
        sha256 = "a6b4569194596ab7ce3736d758c5d89d4ad0317e25876c135f9bdc995b213608",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "detail",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__preprocessor//:preprocessor', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__container_hash",
        urls = ["https://github.com/boostorg/container_hash/archive/boost-1.73.0.zip"],
        strip_prefix = "container_hash-boost-1.73.0/",
        sha256 = "2675abe5e013876b9f9ea727d35d649268168c48ad1132da0da55e7e5f88d086",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "container_hash",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__integer//:integer', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__dynamic_bitset",
        urls = ["https://github.com/boostorg/dynamic_bitset/archive/boost-1.73.0.zip"],
        strip_prefix = "dynamic_bitset-boost-1.73.0/",
        sha256 = "138bbb5ee8593480ee6256cd5ed6cec9096b8ecf9c5c9c91c1f2528c3e28c280",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "dynamic_bitset",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__move//:move', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__endian",
        urls = ["https://github.com/boostorg/endian/archive/boost-1.73.0.zip"],
        strip_prefix = "endian-boost-1.73.0/",
        sha256 = "3bce485b064194525b0cd7ec0fd2914dee0e11b38d9335d04bdd5b1c08a002e5",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "endian",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__intrusive",
        urls = ["https://github.com/boostorg/intrusive/archive/boost-1.73.0.zip"],
        strip_prefix = "intrusive-boost-1.73.0/",
        sha256 = "fe077344977612a906b436f68dbbef8f945d933bfd4ff5eb950950b480e06c12",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "intrusive",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__move//:move', '@org_boost__static_assert//:static_assert'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__container",
        urls = ["https://github.com/boostorg/container/archive/boost-1.73.0.zip"],
        strip_prefix = "container-boost-1.73.0/",
        sha256 = "681a2f2c01341ec22367122129406ac2f3c190837feaa1bea4af3b587a6efd8c",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "container",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__intrusive//:intrusive', '@org_boost__move//:move', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__numeric_interval",
        urls = ["https://github.com/boostorg/interval/archive/boost-1.73.0.zip"],
        strip_prefix = "interval-boost-1.73.0/",
        sha256 = "39f6b8d135d85c8b6c8338c17e005b9a7f1c5e70d7f7cfd784b2e544dfdb697c",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "numeric_interval",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__detail//:detail', '@org_boost__logic//:logic'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__safe_numerics",
        urls = ["https://github.com/boostorg/safe_numerics/archive/boost-1.73.0.zip"],
        strip_prefix = "safe_numerics-boost-1.73.0/",
        sha256 = "d0b9f67811474369d0b6503cb0a83e1c47dc8bef2293e9e224693a6f6d6eebae",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "safe_numerics",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__logic//:logic', '@org_boost__mp11//:mp11'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__smart_ptr",
        urls = ["https://github.com/boostorg/smart_ptr/archive/boost-1.73.0.zip"],
        strip_prefix = "smart_ptr-boost-1.73.0/",
        sha256 = "009e059e0b38101b56220c88084d86b3e56c9ad4b864ffe32d0959c3e663e005",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "smart_ptr",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__move//:move', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__tuple",
        urls = ["https://github.com/boostorg/tuple/archive/boost-1.73.0.zip"],
        strip_prefix = "tuple-boost-1.73.0/",
        sha256 = "3fedb7cb8436f72250a789fe3ad98d61408d0c591ec4af0e958522e9282e6a41",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "tuple",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__exception",
        urls = ["https://github.com/boostorg/exception/archive/boost-1.73.0.zip"],
        strip_prefix = "exception-boost-1.73.0/",
        sha256 = "6e2da702a45deae6a9bf53c1626dfc199761779f1fc69164b41e3eef383842cb",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "exception",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__qvm",
        urls = ["https://github.com/boostorg/qvm/archive/boost-1.73.0.zip"],
        strip_prefix = "qvm-boost-1.73.0/",
        sha256 = "1edf340e118c420aa35cefbb88992a29f940c2388a7e66f87becc543bc487623",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "qvm",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__core//:core', '@org_boost__exception//:exception', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__type_index",
        urls = ["https://github.com/boostorg/type_index/archive/boost-1.73.0.zip"],
        strip_prefix = "type_index-boost-1.73.0/",
        sha256 = "db37a22bc47b458e415b7965e346a98c3e90e3a7d69c9cf1da59257e9088c6fc",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "type_index",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__any",
        urls = ["https://github.com/boostorg/any/archive/boost-1.73.0.zip"],
        strip_prefix = "any-boost-1.73.0/",
        sha256 = "966b91e7cfc610d47c0db5f20ae625a79a252fa7d24c389bd0d2f1ecde3f4eb9",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "any",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_index//:type_index', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__typeof",
        urls = ["https://github.com/boostorg/typeof/archive/boost-1.73.0.zip"],
        strip_prefix = "typeof-boost-1.73.0/",
        sha256 = "dfbfc8a312db0c9c6a415f8e795e33fa99e63ba02eb11f775185f143d0593c56",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "typeof",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__preprocessor//:preprocessor', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__conversion",
        urls = ["https://github.com/boostorg/conversion/archive/boost-1.73.0.zip"],
        strip_prefix = "conversion-boost-1.73.0/",
        sha256 = "adfc5280dd168040b5e3980c44ad4a5c7fef39fe96522ce9b59c6e61f0495170",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "conversion",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__function",
        urls = ["https://github.com/boostorg/function/archive/boost-1.73.0.zip"],
        strip_prefix = "function-boost-1.73.0/",
        sha256 = "957ee08c3ca2b8346a7eb96139b6b75d19afa1e359e4093011269c0087191233",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "function",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__preprocessor//:preprocessor', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_index//:type_index', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__scope_exit",
        urls = ["https://github.com/boostorg/scope_exit/archive/boost-1.73.0.zip"],
        strip_prefix = "scope_exit-boost-1.73.0/",
        sha256 = "66438856ec5972e90513dfb36212c3b817424fae55a80f9c7403e7aa1f4b63ae",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "scope_exit",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__function//:function', '@org_boost__preprocessor//:preprocessor', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__unordered",
        urls = ["https://github.com/boostorg/unordered/archive/boost-1.73.0.zip"],
        strip_prefix = "unordered-boost-1.73.0/",
        sha256 = "c107e282d764a4e35118147739d913042548c312568a8dd4cb2028283f1fff93",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "unordered",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__move//:move', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__utility",
        urls = ["https://github.com/boostorg/utility/archive/boost-1.73.0.zip"],
        strip_prefix = "utility-boost-1.73.0/",
        sha256 = "6a12cb5086a319aee1d6f97eaaeb0fc5763a3711dcc35f3444e44f68ff941636",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "utility",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__io//:io', '@org_boost__preprocessor//:preprocessor', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__mpl",
        urls = ["https://github.com/boostorg/mpl/archive/boost-1.73.0.zip"],
        strip_prefix = "mpl-boost-1.73.0/",
        sha256 = "d26886fabdf3509570e56cb105ccf1fbd41b6c1bfc02a6edbdc736a7da6befb7",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "mpl",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__function_types",
        urls = ["https://github.com/boostorg/function_types/archive/boost-1.73.0.zip"],
        strip_prefix = "function_types-boost-1.73.0/",
        sha256 = "e70d55ce7ca781136273bdaf88fcdca2309b4b98f427f1df7964f1c52ebafe5f",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "function_types",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__functional",
        urls = ["https://github.com/boostorg/functional/archive/boost-1.73.0.zip"],
        strip_prefix = "functional-boost-1.73.0/",
        sha256 = "6633aaa2e2e68be3d846ef1714ee86c48a3d558dada37a8d9c99221cf8edc774",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "functional",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function//:function', '@org_boost__function_types//:function_types', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__fusion",
        urls = ["https://github.com/boostorg/fusion/archive/boost-1.73.0.zip"],
        strip_prefix = "fusion-boost-1.73.0/",
        sha256 = "b695fb814484faf5bf2d56f998464169e93c091d3d8125b3016f228b70415f33",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "fusion",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__function_types//:function_types', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__static_assert//:static_assert', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__hana",
        urls = ["https://github.com/boostorg/hana/archive/boost-1.73.0.zip"],
        strip_prefix = "hana-boost-1.73.0/",
        sha256 = "1c7cd3b60f70a62db6e720b50fa2ef47fa92126b8fdb3b91ac5b1019cb6d77ec",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "hana",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__fusion//:fusion', '@org_boost__mpl//:mpl', '@org_boost__tuple//:tuple'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__local_function",
        urls = ["https://github.com/boostorg/local_function/archive/boost-1.73.0.zip"],
        strip_prefix = "local_function-boost-1.73.0/",
        sha256 = "b573c2da720a356c2aad30d61edba11dba7306f0d5ff02db4643092ac7ad592c",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "local_function",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__scope_exit//:scope_exit', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__metaparse",
        urls = ["https://github.com/boostorg/metaparse/archive/boost-1.73.0.zip"],
        strip_prefix = "metaparse-boost-1.73.0/",
        sha256 = "e761502fb63830edb6b526190df25d3dd5e9027796206a78824cc7ce0bd16fb8",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "metaparse",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__mpl//:mpl', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__numeric_conversion",
        urls = ["https://github.com/boostorg/numeric_conversion/archive/boost-1.73.0.zip"],
        strip_prefix = "numeric_conversion-boost-1.73.0/",
        sha256 = "be2ad78b50f7c3b8db979aa55df23980ccc41ad69e46c6bbb7db89b20d0622c6",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "numeric_conversion",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__conversion//:conversion', '@org_boost__core//:core', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__optional",
        urls = ["https://github.com/boostorg/optional/archive/boost-1.73.0.zip"],
        strip_prefix = "optional-boost-1.73.0/",
        sha256 = "5fed43c41c69832fae876a2de37ba919f13238f297030e8bdef2cea538095d96",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "optional",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__move//:move', '@org_boost__predef//:predef', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__format",
        urls = ["https://github.com/boostorg/format/archive/boost-1.73.0.zip"],
        strip_prefix = "format-boost-1.73.0/",
        sha256 = "e783babf5ae4ef653c6f6e85e4aa95550dbd42a71f0e8dab6739faf242eeed06",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "format",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__optional//:optional', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__throw_exception//:throw_exception', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__iterator",
        urls = ["https://github.com/boostorg/iterator/archive/boost-1.73.0.zip"],
        strip_prefix = "iterator-boost-1.73.0/",
        sha256 = "7e2e78fbefcf5d80e9f8e046313af82a0ecbaf317de1bbc81cec6339839a1c85",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "iterator",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__conversion//:conversion', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__function_types//:function_types', '@org_boost__fusion//:fusion', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__lambda",
        urls = ["https://github.com/boostorg/lambda/archive/boost-1.73.0.zip"],
        strip_prefix = "lambda-boost-1.73.0/",
        sha256 = "444654b0fbba1bbc26ad67f36b195d4c436ed0089fffa77cf3fa792bd3feceb5",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "lambda",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__locale",
        urls = ["https://github.com/boostorg/locale/archive/boost-1.73.0.zip"],
        strip_prefix = "locale-boost-1.73.0/",
        sha256 = "a2f2f60de163e2fead013add25a50dc1795f29dcf16eb8292ce56f63c0471c63",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "locale",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__function//:function', '@org_boost__iterator//:iterator', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__multi_array",
        urls = ["https://github.com/boostorg/multi_array/archive/boost-1.73.0.zip"],
        strip_prefix = "multi_array-boost-1.73.0/",
        sha256 = "0c7e3d2cbf70291c189c8daf10207acda716ad00d11bb4d4f00b44567ed8c4b3",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "multi_array",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__functional//:functional', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__parameter",
        urls = ["https://github.com/boostorg/parameter/archive/boost-1.73.0.zip"],
        strip_prefix = "parameter-boost-1.73.0/",
        sha256 = "711b95abb139e47b345709508cbb1cc9ee022a69d398b81a31c2b1cc41df23ea",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "parameter",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function//:function', '@org_boost__fusion//:fusion', '@org_boost__mp11//:mp11', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__preprocessor//:preprocessor', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__heap",
        urls = ["https://github.com/boostorg/heap/archive/boost-1.73.0.zip"],
        strip_prefix = "heap-boost-1.73.0/",
        sha256 = "f764b43017e719047105b626e9611b5f15dd1137405ca300247e316dd93e0a1a",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "heap",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__intrusive//:intrusive', '@org_boost__iterator//:iterator', '@org_boost__parameter//:parameter', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__lockfree",
        urls = ["https://github.com/boostorg/lockfree/archive/boost-1.73.0.zip"],
        strip_prefix = "lockfree-boost-1.73.0/",
        sha256 = "b52c8e4e3d185dd682bc1d73de0cba7806736bb49ae8c764777af00b0bd95bfa",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "lockfree",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__align//:align', '@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__atomic//:atomic', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__parameter//:parameter', '@org_boost__predef//:predef', '@org_boost__static_assert//:static_assert', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__rational",
        urls = ["https://github.com/boostorg/rational/archive/boost-1.73.0.zip"],
        strip_prefix = "rational-boost-1.73.0/",
        sha256 = "86384d0c23c06236fe1afb660c0f2ff18d11c5983acec36a8298b30d29ed8402",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "rational",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__ratio",
        urls = ["https://github.com/boostorg/ratio/archive/boost-1.73.0.zip"],
        strip_prefix = "ratio-boost-1.73.0/",
        sha256 = "d46da31b09ab1172ec1cd609afa515e6e4cefe7cda22acd1ad88798b0b9f9d8c",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "ratio",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__mpl//:mpl', '@org_boost__rational//:rational', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__regex",
        urls = ["https://github.com/boostorg/regex/archive/boost-1.73.0.zip"],
        strip_prefix = "regex-boost-1.73.0/",
        sha256 = "156d762c48d99ace558c537c8cfe7c3f48a72ab717a322af89219acf868bc087",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "regex",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__predef//:predef', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__range",
        urls = ["https://github.com/boostorg/range/archive/boost-1.73.0.zip"],
        strip_prefix = "range-boost-1.73.0/",
        sha256 = "0a9fbc5130be4c59b9860733b59ab6aa8be3d6cd6e4c963a124569d4f1dd393c",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "range",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__optional//:optional', '@org_boost__preprocessor//:preprocessor', '@org_boost__regex//:regex', '@org_boost__static_assert//:static_assert', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__algorithm",
        urls = ["https://github.com/boostorg/algorithm/archive/boost-1.73.0.zip"],
        strip_prefix = "algorithm-boost-1.73.0/",
        sha256 = "4bdd694d1c4c152a768a363feff0cdf95a61f0c20424b25aaa2b83d7ab627f85",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "algorithm",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__exception//:exception', '@org_boost__function//:function', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__range//:range', '@org_boost__regex//:regex', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__unordered//:unordered'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__foreach",
        urls = ["https://github.com/boostorg/foreach/archive/boost-1.73.0.zip"],
        strip_prefix = "foreach-boost-1.73.0/",
        sha256 = "b8aae55466f1ff54d9376ec803e9c5ce7dbd266efd7cb15765d482aca0156523",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "foreach",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__range//:range', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__lexical_cast",
        urls = ["https://github.com/boostorg/lexical_cast/archive/boost-1.73.0.zip"],
        strip_prefix = "lexical_cast-boost-1.73.0/",
        sha256 = "0cb353864fb950739b87d77a07ee2ae446a048d9fa4e406ba1875210ca049664",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "lexical_cast",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__range//:range', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__math",
        urls = ["https://github.com/boostorg/math/archive/boost-1.73.0.zip"],
        strip_prefix = "math-boost-1.73.0/",
        sha256 = "d487c197a2885648bf931ef7fb688770d55df991696bae7f3b15d327bba13a55",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "math",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__atomic//:atomic', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__fusion//:fusion', '@org_boost__integer//:integer', '@org_boost__lambda//:lambda', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__mp11//:mp11', '@org_boost__mpl//:mpl', '@org_boost__predef//:predef', '@org_boost__range//:range', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__multiprecision",
        urls = ["https://github.com/boostorg/multiprecision/archive/boost-1.73.0.zip"],
        strip_prefix = "multiprecision-boost-1.73.0/",
        sha256 = "6bcf9bb9ae9fc5df157879687441fd5b5ab77657d69c39857d7147eb8f9075f8",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "multiprecision",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__atomic//:atomic', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__math//:math', '@org_boost__mpl//:mpl', '@org_boost__predef//:predef', '@org_boost__rational//:rational', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__program_options",
        urls = ["https://github.com/boostorg/program_options/archive/boost-1.73.0.zip"],
        strip_prefix = "program_options-boost-1.73.0/",
        sha256 = "03e89710784a248c5d3d130246658025dd75090bab1f1b1bb82b96c60715d141",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "program_options",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__any//:any', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__function//:function', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__proto",
        urls = ["https://github.com/boostorg/proto/archive/boost-1.73.0.zip"],
        strip_prefix = "proto-boost-1.73.0/",
        sha256 = "8bafa1742e130217ea85248abd59b021eaf7f29998eb9fd4a3264dc48785c23a",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "proto",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__fusion//:fusion', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__range//:range', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__phoenix",
        urls = ["https://github.com/boostorg/phoenix/archive/boost-1.73.0.zip"],
        strip_prefix = "phoenix-boost-1.73.0/",
        sha256 = "bba40c24d02f9523ed37946c51a0d3a8a14e79fdaa1a5b60b47a01e740d12809",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "phoenix",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function//:function', '@org_boost__fusion//:fusion', '@org_boost__mpl//:mpl', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__proto//:proto', '@org_boost__range//:range', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__python",
        urls = ["https://github.com/boostorg/python/archive/boost-1.73.0.zip"],
        strip_prefix = "python-boost-1.73.0/",
        sha256 = "50721010d5679f01d4c71a431923ba5be3b23c60d599c957771baf81ffdd621f",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "python",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__conversion//:conversion', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__foreach//:foreach', '@org_boost__function//:function', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__mpl//:mpl', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__parameter_python",
        urls = ["https://github.com/boostorg/parameter_python/archive/boost-1.73.0.zip"],
        strip_prefix = "parameter_python-boost-1.73.0/",
        sha256 = "a283b405f7ce42aecf314f262a400c5e48942c3537a9363a6beab8633ec760be",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "parameter_python",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__mpl//:mpl', '@org_boost__parameter//:parameter', '@org_boost__preprocessor//:preprocessor', '@org_boost__python//:python'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__static_string",
        urls = ["https://github.com/boostorg/static_string/archive/boost-1.73.0.zip"],
        strip_prefix = "static_string-boost-1.73.0/",
        sha256 = "bd3e4f3926d75356884e4743e9a4de1a52e9c7ae65207d36c7668eb5d3db0ebe",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "static_string",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__container_hash//:container_hash', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__test",
        urls = ["https://github.com/boostorg/test/archive/boost-1.73.0.zip"],
        strip_prefix = "test-boost-1.73.0/",
        sha256 = "0a528b536e0fdc307f7bf63a461642f7250e9c6d3c98885c75641a9f6e85f222",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "test",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__algorithm//:algorithm', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__exception//:exception', '@org_boost__function//:function', '@org_boost__io//:io', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__optional//:optional', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__tokenizer",
        urls = ["https://github.com/boostorg/tokenizer/archive/boost-1.73.0.zip"],
        strip_prefix = "tokenizer-boost-1.73.0/",
        sha256 = "498d5f980ba20c46880236c8d15196ef0bf3dd0d57bd4c7088ab53190de6b352",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "tokenizer",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__tti",
        urls = ["https://github.com/boostorg/tti/archive/boost-1.73.0.zip"],
        strip_prefix = "tti-boost-1.73.0/",
        sha256 = "69c05286d890e68ef1eed8719ad6f4aa45844be26bb88e7b018af16d3f780041",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "tti",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__function_types//:function_types', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__variant",
        urls = ["https://github.com/boostorg/variant/archive/boost-1.73.0.zip"],
        strip_prefix = "variant-boost-1.73.0/",
        sha256 = "042f18236e7dae0786188f6aeae4664e492cfd1403a2c3d48b298b7643f6bcb1",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "variant",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__integer//:integer', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_index//:type_index', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__serialization",
        urls = ["https://github.com/boostorg/serialization/archive/boost-1.73.0.zip"],
        strip_prefix = "serialization-boost-1.73.0/",
        sha256 = "0fe4991d6d590e417f7911f4fb4c0f0d94c84baf34962c70e11824622aa7a874",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "serialization",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__integer//:integer', '@org_boost__io//:io', '@org_boost__iterator//:iterator', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__spirit//:spirit', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__unordered//:unordered', '@org_boost__utility//:utility', '@org_boost__variant//:variant'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__mpi",
        urls = ["https://github.com/boostorg/mpi/archive/boost-1.73.0.zip"],
        strip_prefix = "mpi-boost-1.73.0/",
        sha256 = "7b10d582b872dfdb5ecc7e3ed0cf10283c48f74bc2e8115160be2ec86a393e46",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "mpi",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__foreach//:foreach', '@org_boost__function//:function', '@org_boost__graph//:graph', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__python//:python', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__msm",
        urls = ["https://github.com/boostorg/msm/archive/boost-1.73.0.zip"],
        strip_prefix = "msm-boost-1.73.0/",
        sha256 = "4768b7e8d75d03e1e1b4b1f61d314bbefefa480edc8aa521882b97386b4d82e4",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "msm",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__any//:any', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__circular_buffer//:circular_buffer', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function//:function', '@org_boost__fusion//:fusion', '@org_boost__mpl//:mpl', '@org_boost__parameter//:parameter', '@org_boost__phoenix//:phoenix', '@org_boost__preprocessor//:preprocessor', '@org_boost__proto//:proto', '@org_boost__serialization//:serialization', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__multi_index",
        urls = ["https://github.com/boostorg/multi_index/archive/boost-1.73.0.zip"],
        strip_prefix = "multi_index-boost-1.73.0/",
        sha256 = "e0f397f2e07f3c77c2a45feb3f7f661ff6b0a3d35c5ecba5e052d6da213bb5d3",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "multi_index",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__foreach//:foreach', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__bimap",
        urls = ["https://github.com/boostorg/bimap/archive/boost-1.73.0.zip"],
        strip_prefix = "bimap-boost-1.73.0/",
        sha256 = "7cac004d632681fb91494ab675b7f783b6c95168975f4cb18088a945cf8189b9",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "bimap",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__iterator//:iterator', '@org_boost__lambda//:lambda', '@org_boost__mpl//:mpl', '@org_boost__multi_index//:multi_index', '@org_boost__preprocessor//:preprocessor', '@org_boost__serialization//:serialization', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__property_map",
        urls = ["https://github.com/boostorg/property_map/archive/boost-1.73.0.zip"],
        strip_prefix = "property_map-boost-1.73.0/",
        sha256 = "6154bbd5665c351b73550570e45a85a630029c0b60d3baf2b4bd123d43ea0e9e",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "property_map",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__any//:any', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function//:function', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__mpl//:mpl', '@org_boost__multi_index//:multi_index', '@org_boost__optional//:optional', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__property_tree",
        urls = ["https://github.com/boostorg/property_tree/archive/boost-1.73.0.zip"],
        strip_prefix = "property_tree-boost-1.73.0/",
        sha256 = "49c1a010567568fee1989a8bde69f2933c7b15203ffcc295f53394d9f51e5226",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "property_tree",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__any//:any', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__format//:format', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__multi_index//:multi_index', '@org_boost__optional//:optional', '@org_boost__range//:range', '@org_boost__serialization//:serialization', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__ptr_container",
        urls = ["https://github.com/boostorg/ptr_container/archive/boost-1.73.0.zip"],
        strip_prefix = "ptr_container-boost-1.73.0/",
        sha256 = "a8fe078bc5067899dde49ed70d6bc107a160533e6a6528ba11c43804eebeb504",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "ptr_container",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__circular_buffer//:circular_buffer', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__range//:range', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__unordered//:unordered', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__assign",
        urls = ["https://github.com/boostorg/assign/archive/boost-1.73.0.zip"],
        strip_prefix = "assign-boost-1.73.0/",
        sha256 = "0facae5e4beb0bad734007aa21395be8003699c4d92cb2733fc3167359798e40",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "assign",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__ptr_container//:ptr_container', '@org_boost__range//:range', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__signals2",
        urls = ["https://github.com/boostorg/signals2/archive/boost-1.73.0.zip"],
        strip_prefix = "signals2-boost-1.73.0/",
        sha256 = "46874d5a2cdc5076d4e674f2095bce678f74fa50da4d7dfb74ba541915c2e1fb",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "signals2",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function//:function', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__parameter//:parameter', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__variant//:variant'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__sort",
        urls = ["https://github.com/boostorg/sort/archive/boost-1.73.0.zip"],
        strip_prefix = "sort-boost-1.73.0/",
        sha256 = "67998b7af2a2ee1b2b9c128cb2b239c31a29071505c55f87ebd09a50e4505c5b",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "sort",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__range//:range', '@org_boost__serialization//:serialization', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__units",
        urls = ["https://github.com/boostorg/units/archive/boost-1.73.0.zip"],
        strip_prefix = "units-boost-1.73.0/",
        sha256 = "ea81872b39f15fb4112a1188a1ad97b6e5466b1898bfb86c37b60085fca2060a",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "units",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__io//:io', '@org_boost__lambda//:lambda', '@org_boost__math//:math', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__serialization//:serialization', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__variant2",
        urls = ["https://github.com/boostorg/variant2/archive/boost-1.73.0.zip"],
        strip_prefix = "variant2-boost-1.73.0/",
        sha256 = "749a62b0ae8f5a44c8273e2f93e164df5861ee80cb419bfad0b0516bb7bf1ca9",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "variant2",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__mp11//:mp11'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__histogram",
        urls = ["https://github.com/boostorg/histogram/archive/boost-1.73.0.zip"],
        strip_prefix = "histogram-boost-1.73.0/",
        sha256 = "851f164d1dab75c529069ca4efc9b80d11ba9a93168636f40ff954f07411cb22",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "histogram",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__mp11//:mp11', '@org_boost__serialization//:serialization', '@org_boost__throw_exception//:throw_exception', '@org_boost__variant2//:variant2'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__vmd",
        urls = ["https://github.com/boostorg/vmd/archive/boost-1.73.0.zip"],
        strip_prefix = "vmd-boost-1.73.0/",
        sha256 = "704ab50da0504cb764ced6fe381e4b507a396f0897e0ac8e99f77ed10dbfaac2",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "vmd",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__preprocessor//:preprocessor'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__type_erasure",
        urls = ["https://github.com/boostorg/type_erasure/archive/boost-1.73.0.zip"],
        strip_prefix = "type_erasure-boost-1.73.0/",
        sha256 = "9bc7c118f70d9a328f25b2232abbad4e3a5d5fb7bb72e14165812c14ab8a898f",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "type_erasure",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__fusion//:fusion', '@org_boost__iterator//:iterator', '@org_boost__mp11//:mp11', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__vmd//:vmd'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__poly_collection",
        urls = ["https://github.com/boostorg/poly_collection/archive/boost-1.73.0.zip"],
        strip_prefix = "poly_collection-boost-1.73.0/",
        sha256 = "f1d45295b547957a76783909f7bd5a23916aa9d4a44ea717364062d0ab639c24",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "poly_collection",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__iterator//:iterator', '@org_boost__mp11//:mp11', '@org_boost__mpl//:mpl', '@org_boost__type_erasure//:type_erasure', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__winapi",
        urls = ["https://github.com/boostorg/winapi/archive/boost-1.73.0.zip"],
        strip_prefix = "winapi-boost-1.73.0/",
        sha256 = "fc7363e50784632ccc6352260b657e73a0b78af7f5ff247fdc015fdbe8b02391",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "winapi",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__predef//:predef'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__date_time",
        urls = ["https://github.com/boostorg/date_time/archive/boost-1.73.0.zip"],
        strip_prefix = "date_time-boost-1.73.0/",
        sha256 = "29364ddf6bfef8dd975d800edf773bd1c39a1f98a589dca66839bb7cebb3f139",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "date_time",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__algorithm//:algorithm', '@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__io//:io', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__range//:range', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tokenizer//:tokenizer', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__icl",
        urls = ["https://github.com/boostorg/icl/archive/boost-1.73.0.zip"],
        strip_prefix = "icl-boost-1.73.0/",
        sha256 = "c9414f2bccfa81949dd6fd58a63394d7c7beb691835137f69c16f5129d3420c1",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "icl",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__core//:core', '@org_boost__date_time//:date_time', '@org_boost__detail//:detail', '@org_boost__iterator//:iterator', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__range//:range', '@org_boost__rational//:rational', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__interprocess",
        urls = ["https://github.com/boostorg/interprocess/archive/boost-1.73.0.zip"],
        strip_prefix = "interprocess-boost-1.73.0/",
        sha256 = "25d5defb857fcdee9b75493c3c4d5c73438f94d0eedb2cb081dbb528d04b52d0",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "interprocess",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__core//:core', '@org_boost__date_time//:date_time', '@org_boost__integer//:integer', '@org_boost__intrusive//:intrusive', '@org_boost__move//:move', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__unordered//:unordered', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__flyweight",
        urls = ["https://github.com/boostorg/flyweight/archive/boost-1.73.0.zip"],
        strip_prefix = "flyweight-boost-1.73.0/",
        sha256 = "9751018b1f13bf44fd19d72b0953e9164e8d4ec3ba8115e936d42b4a3f76d2e2",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "flyweight",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__interprocess//:interprocess', '@org_boost__mpl//:mpl', '@org_boost__multi_index//:multi_index', '@org_boost__parameter//:parameter', '@org_boost__preprocessor//:preprocessor', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__pool",
        urls = ["https://github.com/boostorg/pool/archive/boost-1.73.0.zip"],
        strip_prefix = "pool-boost-1.73.0/",
        sha256 = "27248426cd844929811851030ab549df74c1f166998160eb0dde1f6a82dbca3f",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "pool",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__integer//:integer', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__context",
        urls = ["https://github.com/boostorg/context/archive/boost-1.73.0.zip"],
        strip_prefix = "context-boost-1.73.0/",
        sha256 = "70d82d5ab1aab2c7293119f6444109dece48c4ac955aa6c4cf597b0973bb4dde",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "context",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__pool//:pool', '@org_boost__predef//:predef', '@org_boost__smart_ptr//:smart_ptr'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'] + select({"@bazel_tools//src/conditions:windows": ["BOOST_USE_WINFIB"], "//conditions:default": ["BOOST_USE_UCONTEXT"]}),
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__coroutine2",
        urls = ["https://github.com/boostorg/coroutine2/archive/boost-1.73.0.zip"],
        strip_prefix = "coroutine2-boost-1.73.0/",
        sha256 = "c84736528ce4f4a6276d266b5676ec1cc34fa953fbe8a3a2226d16803f19f8a8",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "coroutine2",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__context//:context'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__fiber",
        urls = ["https://github.com/boostorg/fiber/archive/boost-1.73.0.zip"],
        strip_prefix = "fiber-boost-1.73.0/",
        sha256 = "f875521c9897676fb45f749ac7e234536f69aad1f7fd0774193eda2e46fbb0e2",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "fiber",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__context//:context', '@org_boost__core//:core', '@org_boost__intrusive//:intrusive', '@org_boost__predef//:predef', '@org_boost__smart_ptr//:smart_ptr'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__stacktrace",
        urls = ["https://github.com/boostorg/stacktrace/archive/boost-1.73.0.zip"],
        strip_prefix = "stacktrace-boost-1.73.0/",
        sha256 = "fcc903eb258dde1fa69a96346bc1a9061876198616018f99a5a4e72d069999df",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "stacktrace",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__predef//:predef', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__system",
        urls = ["https://github.com/boostorg/system/archive/boost-1.73.0.zip"],
        strip_prefix = "system-boost-1.73.0/",
        sha256 = "baeb3de822a40e7e57c37a5bab98d4862a9cf23ab34e474e3e374c38e176506f",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "system",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__chrono",
        urls = ["https://github.com/boostorg/chrono/archive/boost-1.73.0.zip"],
        strip_prefix = "chrono-boost-1.73.0/",
        sha256 = "5abb3efce23fb25d94d098c6e4cb2ba16c091d5ae29512ba97c7059092b3f670",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "chrono",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__integer//:integer', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__predef//:predef', '@org_boost__ratio//:ratio', '@org_boost__static_assert//:static_assert', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__coroutine",
        urls = ["https://github.com/boostorg/coroutine/archive/boost-1.73.0.zip"],
        strip_prefix = "coroutine-boost-1.73.0/",
        sha256 = "8b9a643a2d1325fda808232ad330ee017d3bf9c11b2114ba35dcfd11f3a44cce",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "coroutine",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__context//:context', '@org_boost__core//:core', '@org_boost__exception//:exception', '@org_boost__move//:move', '@org_boost__range//:range', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__asio",
        urls = ["https://github.com/boostorg/asio/archive/boost-1.73.0.zip"],
        strip_prefix = "asio-boost-1.73.0/",
        sha256 = "9ffd64e064928e9be036905bf36e3e3bef314d16acf1cf74fc5a4c91b8720f31",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "asio",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__chrono//:chrono', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__coroutine//:coroutine', '@org_boost__date_time//:date_time', '@org_boost__function//:function', '@org_boost__regex//:regex', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [] + select({"@bazel_tools//src/conditions:windows": [], "//conditions:default": ["-pthread"]}),
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__beast",
        urls = ["https://github.com/boostorg/beast/archive/boost-1.73.0.zip"],
        strip_prefix = "beast-boost-1.73.0/",
        sha256 = "be71524b0d65d6e94a2a097adc03c1fef08441ee208353209848e6ce6e506857",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "beast",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__asio//:asio', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__core//:core', '@org_boost__endian//:endian', '@org_boost__intrusive//:intrusive', '@org_boost__logic//:logic', '@org_boost__mp11//:mp11', '@org_boost__optional//:optional', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'] + ['BOOST_BEAST_USE_STD_STRING_VIEW'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__filesystem",
        urls = ["https://github.com/boostorg/filesystem/archive/boost-1.73.0.zip"],
        strip_prefix = "filesystem-boost-1.73.0/",
        sha256 = "e8cb8f10a4846c8a6ce091d7dffe91752fe2c2450c79dd1c628a83cc53271453",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "filesystem",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__io//:io', '@org_boost__iterator//:iterator', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__system//:system', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__gil",
        urls = ["https://github.com/boostorg/gil/archive/boost-1.73.0.zip"],
        strip_prefix = "gil-boost-1.73.0/",
        sha256 = "fb2ba68e451927670fcf32c1c9abe980b7503811044c224e08eb93ac37cb0ac2",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "gil",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__filesystem//:filesystem', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__mp11//:mp11', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__preprocessor//:preprocessor', '@org_boost__variant//:variant'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__nowide",
        urls = ["https://github.com/boostorg/nowide/archive/boost-1.73.0.zip"],
        strip_prefix = "nowide-boost-1.73.0/",
        sha256 = "415fd28db767227d1e9aa39118b75664592cea222304549bd105ef28548b7704",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "nowide",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__filesystem//:filesystem', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__outcome",
        urls = ["https://github.com/boostorg/outcome/archive/boost-1.73.0.zip"],
        strip_prefix = "outcome-boost-1.73.0/",
        sha256 = "ad51c0d21a13bc8ca208269282ef24788ef3b8833a73f667219e76e51710fb0d",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "outcome",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__exception//:exception', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__process",
        urls = ["https://github.com/boostorg/process/archive/boost-1.73.0.zip"],
        strip_prefix = "process-boost-1.73.0/",
        sha256 = "e90ca060dda5da4b69496df03df28de55af579a91fdbf81448081afbac84a971",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "process",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__algorithm//:algorithm', '@org_boost__asio//:asio', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__filesystem//:filesystem', '@org_boost__fusion//:fusion', '@org_boost__iterator//:iterator', '@org_boost__move//:move', '@org_boost__optional//:optional', '@org_boost__system//:system', '@org_boost__tokenizer//:tokenizer', '@org_boost__type_index//:type_index', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__random",
        urls = ["https://github.com/boostorg/random/archive/boost-1.73.0.zip"],
        strip_prefix = "random-boost-1.73.0/",
        sha256 = "6f9659ee24553fa70f86ac9bd046bd90cafc998deea3caea759e0a9d69c85ab7",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "random",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__dynamic_bitset//:dynamic_bitset', '@org_boost__integer//:integer', '@org_boost__io//:io', '@org_boost__math//:math', '@org_boost__mpl//:mpl', '@org_boost__multiprecision//:multiprecision', '@org_boost__range//:range', '@org_boost__static_assert//:static_assert', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__iostreams",
        urls = ["https://github.com/boostorg/iostreams/archive/boost-1.73.0.zip"],
        strip_prefix = "iostreams-boost-1.73.0/",
        sha256 = "551a9e1ecc24768b1fdbb0a9fdced958fe2b2a1ba843379e3c9870dd68c331cc",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "iostreams",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__function//:function', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__preprocessor//:preprocessor', '@org_boost__random//:random', '@org_boost__range//:range', '@org_boost__regex//:regex', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__spirit",
        urls = ["https://github.com/boostorg/spirit/archive/boost-1.73.0.zip"],
        strip_prefix = "spirit-boost-1.73.0/",
        sha256 = "0d054101f08d5d3661196f964403a8e42ad10ae09687201406b663ea5db6da57",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "spirit",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__endian//:endian', '@org_boost__filesystem//:filesystem', '@org_boost__foreach//:foreach', '@org_boost__function//:function', '@org_boost__function_types//:function_types', '@org_boost__fusion//:fusion', '@org_boost__integer//:integer', '@org_boost__io//:io', '@org_boost__iostreams//:iostreams', '@org_boost__iterator//:iterator', '@org_boost__locale//:locale', '@org_boost__math//:math', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__phoenix//:phoenix', '@org_boost__pool//:pool', '@org_boost__preprocessor//:preprocessor', '@org_boost__proto//:proto', '@org_boost__range//:range', '@org_boost__regex//:regex', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__thread//:thread', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__unordered//:unordered', '@org_boost__utility//:utility', '@org_boost__variant//:variant'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__convert",
        urls = ["https://github.com/boostorg/convert/archive/boost-1.73.0.zip"],
        strip_prefix = "convert-boost-1.73.0/",
        sha256 = "7d4fb771cecfc051c7047b78fe0539888c2e47efc8ef9c904b63fb0b1d3ca212",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "convert",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function_types//:function_types', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__math//:math', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__parameter//:parameter', '@org_boost__range//:range', '@org_boost__spirit//:spirit', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__dll",
        urls = ["https://github.com/boostorg/dll/archive/boost-1.73.0.zip"],
        strip_prefix = "dll-boost-1.73.0/",
        sha256 = "ce8b10b01368034261cb7e0e2efc0379a832129302a1c5d4130512dc6247d36d",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "dll",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__filesystem//:filesystem', '@org_boost__function//:function', '@org_boost__move//:move', '@org_boost__predef//:predef', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__spirit//:spirit', '@org_boost__static_assert//:static_assert', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_index//:type_index', '@org_boost__type_traits//:type_traits', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__thread",
        urls = ["https://github.com/boostorg/thread/archive/boost-1.73.0.zip"],
        strip_prefix = "thread-boost-1.73.0/",
        sha256 = "da2619ad317e023fd520853b7f646da2206e9004b239aa4eb505cbecbd073007",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "thread",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__atomic//:atomic', '@org_boost__bind//:bind', '@org_boost__chrono//:chrono', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__date_time//:date_time', '@org_boost__exception//:exception', '@org_boost__function//:function', '@org_boost__intrusive//:intrusive', '@org_boost__io//:io', '@org_boost__iterator//:iterator', '@org_boost__move//:move', '@org_boost__optional//:optional', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__system//:system', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__contract",
        urls = ["https://github.com/boostorg/contract/archive/boost-1.73.0.zip"],
        strip_prefix = "contract-boost-1.73.0/",
        sha256 = "d1b0f539b7ec441f33af113245864fb72da48d3a44eef03b414b2c90dbdccc76",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "contract",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__any//:any', '@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__exception//:exception', '@org_boost__function//:function', '@org_boost__function_types//:function_types', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__preprocessor//:preprocessor', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__thread//:thread', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__geometry",
        urls = ["https://github.com/boostorg/geometry/archive/boost-1.73.0.zip"],
        strip_prefix = "geometry-boost-1.73.0/",
        sha256 = "005a401b2118b629ceac097c8121319af5885f0e059383a0a88f9bea6bef8047",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "geometry",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__algorithm//:algorithm', '@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__core//:core', '@org_boost__function_types//:function_types', '@org_boost__fusion//:fusion', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__math//:math', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__multiprecision//:multiprecision', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__polygon//:polygon', '@org_boost__qvm//:qvm', '@org_boost__range//:range', '@org_boost__rational//:rational', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__thread//:thread', '@org_boost__throw_exception//:throw_exception', '@org_boost__tokenizer//:tokenizer', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility', '@org_boost__variant//:variant'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__statechart",
        urls = ["https://github.com/boostorg/statechart/archive/boost-1.73.0.zip"],
        strip_prefix = "statechart-boost-1.73.0/",
        sha256 = "78b1c8bf4011af3f5fca9b7c0ea6a7790ef51220824f799dc47f4278715ce1ed",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "statechart",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__conversion//:conversion', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__function//:function', '@org_boost__mpl//:mpl', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__thread//:thread', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__timer",
        urls = ["https://github.com/boostorg/timer/archive/boost-1.73.0.zip"],
        strip_prefix = "timer-boost-1.73.0/",
        sha256 = "62dd1e8f5bc705a98a8be1e3ef133a9d6ba1d81360076fa4a75fdc9761f99087",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "timer",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__system//:system'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__uuid",
        urls = ["https://github.com/boostorg/uuid/archive/boost-1.73.0.zip"],
        strip_prefix = "uuid-boost-1.73.0/",
        sha256 = "b568741a11c7de304fdb99230a4a11ebacc04f05b97aed2d028b8d887914edc3",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "uuid",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__io//:io', '@org_boost__move//:move', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__predef//:predef', '@org_boost__random//:random', '@org_boost__serialization//:serialization', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tti//:tti', '@org_boost__type_traits//:type_traits', '@org_boost__winapi//:winapi'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__compute",
        urls = ["https://github.com/boostorg/compute/archive/boost-1.73.0.zip"],
        strip_prefix = "compute-boost-1.73.0/",
        sha256 = "21ca471befc21c64f7bd21faff34970269015d971b3b38f07f8015d0a29cf173",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "compute",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__algorithm//:algorithm', '@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__chrono//:chrono', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__filesystem//:filesystem', '@org_boost__function//:function', '@org_boost__function_types//:function_types', '@org_boost__fusion//:fusion', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__preprocessor//:preprocessor', '@org_boost__property_tree//:property_tree', '@org_boost__proto//:proto', '@org_boost__range//:range', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__thread//:thread', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility', '@org_boost__uuid//:uuid'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__numeric_ublas",
        urls = ["https://github.com/boostorg/ublas/archive/boost-1.73.0.zip"],
        strip_prefix = "ublas-boost-1.73.0/",
        sha256 = "d46e6b00866ea6b52a73d5c32083fadadfafb3efe0acc07da205dac8debd7e07",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "numeric_ublas",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__compute//:compute', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__numeric_interval//:numeric_interval', '@org_boost__range//:range', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__accumulators",
        urls = ["https://github.com/boostorg/accumulators/archive/boost-1.73.0.zip"],
        strip_prefix = "accumulators-boost-1.73.0/",
        sha256 = "77d3a55ee15a8a94bd802976a658a9b865de940df4c205a8e4b309f1ef3fa720",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "accumulators",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__circular_buffer//:circular_buffer', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__fusion//:fusion', '@org_boost__iterator//:iterator', '@org_boost__mpl//:mpl', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__numeric_ublas//:numeric_ublas', '@org_boost__parameter//:parameter', '@org_boost__preprocessor//:preprocessor', '@org_boost__range//:range', '@org_boost__serialization//:serialization', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__numeric_odeint",
        urls = ["https://github.com/boostorg/odeint/archive/boost-1.73.0.zip"],
        strip_prefix = "odeint-boost-1.73.0/",
        sha256 = "489d308462fc43ce64de6411e034631c7828235af11044094523fb140e66fbd4",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "numeric_odeint",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__bind//:bind', '@org_boost__compute//:compute', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__function//:function', '@org_boost__fusion//:fusion', '@org_boost__iterator//:iterator', '@org_boost__math//:math', '@org_boost__mpi//:mpi', '@org_boost__mpl//:mpl', '@org_boost__multi_array//:multi_array', '@org_boost__numeric_ublas//:numeric_ublas', '@org_boost__preprocessor//:preprocessor', '@org_boost__range//:range', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__units//:units', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__wave",
        urls = ["https://github.com/boostorg/wave/archive/boost-1.73.0.zip"],
        strip_prefix = "wave-boost-1.73.0/",
        sha256 = "c3832b813d932baedb87172b1cb1f8b4caa74ba6616a5d8ae679863a3d6bdd58",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "wave",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__core//:core', '@org_boost__filesystem//:filesystem', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__mpl//:mpl', '@org_boost__multi_index//:multi_index', '@org_boost__pool//:pool', '@org_boost__preprocessor//:preprocessor', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__spirit//:spirit', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__xpressive",
        urls = ["https://github.com/boostorg/xpressive/archive/boost-1.73.0.zip"],
        strip_prefix = "xpressive-boost-1.73.0/",
        sha256 = "bf171752b54f90377238d4673f5204532d565e3cb6d5a32a3636cd0fc3a5f1da",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "xpressive",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__config//:config', '@org_boost__conversion//:conversion', '@org_boost__core//:core', '@org_boost__exception//:exception', '@org_boost__fusion//:fusion', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__mpl//:mpl', '@org_boost__numeric_conversion//:numeric_conversion', '@org_boost__optional//:optional', '@org_boost__preprocessor//:preprocessor', '@org_boost__proto//:proto', '@org_boost__range//:range', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__utility//:utility'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__graph",
        urls = ["https://github.com/boostorg/graph/archive/boost-1.73.0.zip"],
        strip_prefix = "graph-boost-1.73.0/",
        sha256 = "b1640fea941a458edc94ba87186b8c9b8bed050f93ef947594d4a75c5ba85fc0",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "graph",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__algorithm//:algorithm', '@org_boost__any//:any', '@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__bimap//:bimap', '@org_boost__bind//:bind', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__conversion//:conversion', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__foreach//:foreach', '@org_boost__function//:function', '@org_boost__integer//:integer', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__math//:math', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__multi_index//:multi_index', '@org_boost__optional//:optional', '@org_boost__parameter//:parameter', '@org_boost__preprocessor//:preprocessor', '@org_boost__property_map//:property_map', '@org_boost__property_tree//:property_tree', '@org_boost__random//:random', '@org_boost__range//:range', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__spirit//:spirit', '@org_boost__static_assert//:static_assert', '@org_boost__throw_exception//:throw_exception', '@org_boost__tti//:tti', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__typeof//:typeof', '@org_boost__unordered//:unordered', '@org_boost__utility//:utility', '@org_boost__xpressive//:xpressive'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__graph_parallel",
        urls = ["https://github.com/boostorg/graph_parallel/archive/boost-1.73.0.zip"],
        strip_prefix = "graph_parallel-boost-1.73.0/",
        sha256 = "4a060143fd28855a1b616bed0620c9af2be1911b6fa382d4847e59d3edaf3275",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "graph_parallel",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__assert//:assert', '@org_boost__concept_check//:concept_check', '@org_boost__config//:config', '@org_boost__container_hash//:container_hash', '@org_boost__core//:core', '@org_boost__detail//:detail', '@org_boost__dynamic_bitset//:dynamic_bitset', '@org_boost__filesystem//:filesystem', '@org_boost__foreach//:foreach', '@org_boost__function//:function', '@org_boost__graph//:graph', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__mpi//:mpi', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__property_map//:property_map', '@org_boost__random//:random', '@org_boost__serialization//:serialization', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__static_assert//:static_assert', '@org_boost__tuple//:tuple', '@org_boost__type_traits//:type_traits', '@org_boost__variant//:variant'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__log",
        urls = ["https://github.com/boostorg/log/archive/boost-1.73.0.zip"],
        strip_prefix = "log-boost-1.73.0/",
        sha256 = "01ca5be974241f18bf41eb0a924e191e3644802bed0182218345002aa9062f20",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "log",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__array//:array', '@org_boost__assert//:assert', '@org_boost__atomic//:atomic', '@org_boost__bind//:bind', '@org_boost__config//:config', '@org_boost__container//:container', '@org_boost__core//:core', '@org_boost__date_time//:date_time', '@org_boost__exception//:exception', '@org_boost__filesystem//:filesystem', '@org_boost__function_types//:function_types', '@org_boost__fusion//:fusion', '@org_boost__intrusive//:intrusive', '@org_boost__iterator//:iterator', '@org_boost__lexical_cast//:lexical_cast', '@org_boost__locale//:locale', '@org_boost__move//:move', '@org_boost__mpl//:mpl', '@org_boost__optional//:optional', '@org_boost__parameter//:parameter', '@org_boost__phoenix//:phoenix', '@org_boost__predef//:predef', '@org_boost__preprocessor//:preprocessor', '@org_boost__property_tree//:property_tree', '@org_boost__proto//:proto', '@org_boost__range//:range', '@org_boost__regex//:regex', '@org_boost__smart_ptr//:smart_ptr', '@org_boost__spirit//:spirit', '@org_boost__static_assert//:static_assert', '@org_boost__system//:system', '@org_boost__thread//:thread', '@org_boost__throw_exception//:throw_exception', '@org_boost__type_index//:type_index', '@org_boost__type_traits//:type_traits', '@org_boost__utility//:utility', '@org_boost__winapi//:winapi', '@org_boost__xpressive//:xpressive'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "org_boost__yap",
        urls = ["https://github.com/boostorg/yap/archive/boost-1.73.0.zip"],
        strip_prefix = "yap-boost-1.73.0/",
        sha256 = "5bb1874cfe7aa4fe50ff06d10e84b5bacf5520ba10fe6c0a18d90ef4ec1193e4",
        build_file_content = """
load("@rules_cc//cc:defs.bzl", "cc_library")
cc_library(
    name = "yap",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
    ]),
    srcs = glob([
        "src/**/*.hpp",
        "src/**/*.cpp",
    ],
    exclude = [
        "src/**/win32/*.*",
    ]) + select({
        "@bazel_tools//src/conditions:windows": glob(["src/**/win32/*.cpp"], ["src/**/win32/*.hpp"]),
        "//conditions:default" : [],
    }),
    includes = ["include/"],
    deps = ['@org_boost__hana//:hana', '@org_boost__preprocessor//:preprocessor', '@org_boost__type_index//:type_index'],
    linkopts = [],
    defines = [] + ['BOOST_ALL_NO_LIB'],
    visibility = ["//visibility:public"],
)
""",
    )

    _boost_repo_rule(
        name = "boost",
        build_file_content = """alias(
    name = "callable_traits",
    actual = "@org_boost__callable_traits//:callable_traits",
    visibility = ["//visibility:public"],
)
alias(
    name = "compatibility",
    actual = "@org_boost__compatibility//:compatibility",
    visibility = ["//visibility:public"],
)
alias(
    name = "config",
    actual = "@org_boost__config//:config",
    visibility = ["//visibility:public"],
)
alias(
    name = "assert",
    actual = "@org_boost__assert//:assert",
    visibility = ["//visibility:public"],
)
alias(
    name = "core",
    actual = "@org_boost__core//:core",
    visibility = ["//visibility:public"],
)
alias(
    name = "bind",
    actual = "@org_boost__bind//:bind",
    visibility = ["//visibility:public"],
)
alias(
    name = "hof",
    actual = "@org_boost__hof//:hof",
    visibility = ["//visibility:public"],
)
alias(
    name = "io",
    actual = "@org_boost__io//:io",
    visibility = ["//visibility:public"],
)
alias(
    name = "logic",
    actual = "@org_boost__logic//:logic",
    visibility = ["//visibility:public"],
)
alias(
    name = "mp11",
    actual = "@org_boost__mp11//:mp11",
    visibility = ["//visibility:public"],
)
alias(
    name = "polygon",
    actual = "@org_boost__polygon//:polygon",
    visibility = ["//visibility:public"],
)
alias(
    name = "predef",
    actual = "@org_boost__predef//:predef",
    visibility = ["//visibility:public"],
)
alias(
    name = "preprocessor",
    actual = "@org_boost__preprocessor//:preprocessor",
    visibility = ["//visibility:public"],
)
alias(
    name = "static_assert",
    actual = "@org_boost__static_assert//:static_assert",
    visibility = ["//visibility:public"],
)
alias(
    name = "align",
    actual = "@org_boost__align//:align",
    visibility = ["//visibility:public"],
)
alias(
    name = "move",
    actual = "@org_boost__move//:move",
    visibility = ["//visibility:public"],
)
alias(
    name = "throw_exception",
    actual = "@org_boost__throw_exception//:throw_exception",
    visibility = ["//visibility:public"],
)
alias(
    name = "array",
    actual = "@org_boost__array//:array",
    visibility = ["//visibility:public"],
)
alias(
    name = "integer",
    actual = "@org_boost__integer//:integer",
    visibility = ["//visibility:public"],
)
alias(
    name = "type_traits",
    actual = "@org_boost__type_traits//:type_traits",
    visibility = ["//visibility:public"],
)
alias(
    name = "atomic",
    actual = "@org_boost__atomic//:atomic",
    visibility = ["//visibility:public"],
)
alias(
    name = "concept_check",
    actual = "@org_boost__concept_check//:concept_check",
    visibility = ["//visibility:public"],
)
alias(
    name = "circular_buffer",
    actual = "@org_boost__circular_buffer//:circular_buffer",
    visibility = ["//visibility:public"],
)
alias(
    name = "crc",
    actual = "@org_boost__crc//:crc",
    visibility = ["//visibility:public"],
)
alias(
    name = "detail",
    actual = "@org_boost__detail//:detail",
    visibility = ["//visibility:public"],
)
alias(
    name = "container_hash",
    actual = "@org_boost__container_hash//:container_hash",
    visibility = ["//visibility:public"],
)
alias(
    name = "dynamic_bitset",
    actual = "@org_boost__dynamic_bitset//:dynamic_bitset",
    visibility = ["//visibility:public"],
)
alias(
    name = "endian",
    actual = "@org_boost__endian//:endian",
    visibility = ["//visibility:public"],
)
alias(
    name = "intrusive",
    actual = "@org_boost__intrusive//:intrusive",
    visibility = ["//visibility:public"],
)
alias(
    name = "container",
    actual = "@org_boost__container//:container",
    visibility = ["//visibility:public"],
)
alias(
    name = "numeric_interval",
    actual = "@org_boost__numeric_interval//:numeric_interval",
    visibility = ["//visibility:public"],
)
alias(
    name = "safe_numerics",
    actual = "@org_boost__safe_numerics//:safe_numerics",
    visibility = ["//visibility:public"],
)
alias(
    name = "smart_ptr",
    actual = "@org_boost__smart_ptr//:smart_ptr",
    visibility = ["//visibility:public"],
)
alias(
    name = "tuple",
    actual = "@org_boost__tuple//:tuple",
    visibility = ["//visibility:public"],
)
alias(
    name = "exception",
    actual = "@org_boost__exception//:exception",
    visibility = ["//visibility:public"],
)
alias(
    name = "qvm",
    actual = "@org_boost__qvm//:qvm",
    visibility = ["//visibility:public"],
)
alias(
    name = "type_index",
    actual = "@org_boost__type_index//:type_index",
    visibility = ["//visibility:public"],
)
alias(
    name = "any",
    actual = "@org_boost__any//:any",
    visibility = ["//visibility:public"],
)
alias(
    name = "typeof",
    actual = "@org_boost__typeof//:typeof",
    visibility = ["//visibility:public"],
)
alias(
    name = "conversion",
    actual = "@org_boost__conversion//:conversion",
    visibility = ["//visibility:public"],
)
alias(
    name = "function",
    actual = "@org_boost__function//:function",
    visibility = ["//visibility:public"],
)
alias(
    name = "scope_exit",
    actual = "@org_boost__scope_exit//:scope_exit",
    visibility = ["//visibility:public"],
)
alias(
    name = "unordered",
    actual = "@org_boost__unordered//:unordered",
    visibility = ["//visibility:public"],
)
alias(
    name = "utility",
    actual = "@org_boost__utility//:utility",
    visibility = ["//visibility:public"],
)
alias(
    name = "mpl",
    actual = "@org_boost__mpl//:mpl",
    visibility = ["//visibility:public"],
)
alias(
    name = "function_types",
    actual = "@org_boost__function_types//:function_types",
    visibility = ["//visibility:public"],
)
alias(
    name = "functional",
    actual = "@org_boost__functional//:functional",
    visibility = ["//visibility:public"],
)
alias(
    name = "fusion",
    actual = "@org_boost__fusion//:fusion",
    visibility = ["//visibility:public"],
)
alias(
    name = "hana",
    actual = "@org_boost__hana//:hana",
    visibility = ["//visibility:public"],
)
alias(
    name = "local_function",
    actual = "@org_boost__local_function//:local_function",
    visibility = ["//visibility:public"],
)
alias(
    name = "metaparse",
    actual = "@org_boost__metaparse//:metaparse",
    visibility = ["//visibility:public"],
)
alias(
    name = "numeric_conversion",
    actual = "@org_boost__numeric_conversion//:numeric_conversion",
    visibility = ["//visibility:public"],
)
alias(
    name = "optional",
    actual = "@org_boost__optional//:optional",
    visibility = ["//visibility:public"],
)
alias(
    name = "format",
    actual = "@org_boost__format//:format",
    visibility = ["//visibility:public"],
)
alias(
    name = "iterator",
    actual = "@org_boost__iterator//:iterator",
    visibility = ["//visibility:public"],
)
alias(
    name = "lambda",
    actual = "@org_boost__lambda//:lambda",
    visibility = ["//visibility:public"],
)
alias(
    name = "locale",
    actual = "@org_boost__locale//:locale",
    visibility = ["//visibility:public"],
)
alias(
    name = "multi_array",
    actual = "@org_boost__multi_array//:multi_array",
    visibility = ["//visibility:public"],
)
alias(
    name = "parameter",
    actual = "@org_boost__parameter//:parameter",
    visibility = ["//visibility:public"],
)
alias(
    name = "heap",
    actual = "@org_boost__heap//:heap",
    visibility = ["//visibility:public"],
)
alias(
    name = "lockfree",
    actual = "@org_boost__lockfree//:lockfree",
    visibility = ["//visibility:public"],
)
alias(
    name = "rational",
    actual = "@org_boost__rational//:rational",
    visibility = ["//visibility:public"],
)
alias(
    name = "ratio",
    actual = "@org_boost__ratio//:ratio",
    visibility = ["//visibility:public"],
)
alias(
    name = "regex",
    actual = "@org_boost__regex//:regex",
    visibility = ["//visibility:public"],
)
alias(
    name = "range",
    actual = "@org_boost__range//:range",
    visibility = ["//visibility:public"],
)
alias(
    name = "algorithm",
    actual = "@org_boost__algorithm//:algorithm",
    visibility = ["//visibility:public"],
)
alias(
    name = "foreach",
    actual = "@org_boost__foreach//:foreach",
    visibility = ["//visibility:public"],
)
alias(
    name = "lexical_cast",
    actual = "@org_boost__lexical_cast//:lexical_cast",
    visibility = ["//visibility:public"],
)
alias(
    name = "math",
    actual = "@org_boost__math//:math",
    visibility = ["//visibility:public"],
)
alias(
    name = "multiprecision",
    actual = "@org_boost__multiprecision//:multiprecision",
    visibility = ["//visibility:public"],
)
alias(
    name = "program_options",
    actual = "@org_boost__program_options//:program_options",
    visibility = ["//visibility:public"],
)
alias(
    name = "proto",
    actual = "@org_boost__proto//:proto",
    visibility = ["//visibility:public"],
)
alias(
    name = "phoenix",
    actual = "@org_boost__phoenix//:phoenix",
    visibility = ["//visibility:public"],
)
alias(
    name = "python",
    actual = "@org_boost__python//:python",
    visibility = ["//visibility:public"],
)
alias(
    name = "parameter_python",
    actual = "@org_boost__parameter_python//:parameter_python",
    visibility = ["//visibility:public"],
)
alias(
    name = "static_string",
    actual = "@org_boost__static_string//:static_string",
    visibility = ["//visibility:public"],
)
alias(
    name = "test",
    actual = "@org_boost__test//:test",
    visibility = ["//visibility:public"],
)
alias(
    name = "tokenizer",
    actual = "@org_boost__tokenizer//:tokenizer",
    visibility = ["//visibility:public"],
)
alias(
    name = "tti",
    actual = "@org_boost__tti//:tti",
    visibility = ["//visibility:public"],
)
alias(
    name = "variant",
    actual = "@org_boost__variant//:variant",
    visibility = ["//visibility:public"],
)
alias(
    name = "serialization",
    actual = "@org_boost__serialization//:serialization",
    visibility = ["//visibility:public"],
)
alias(
    name = "mpi",
    actual = "@org_boost__mpi//:mpi",
    visibility = ["//visibility:public"],
)
alias(
    name = "msm",
    actual = "@org_boost__msm//:msm",
    visibility = ["//visibility:public"],
)
alias(
    name = "multi_index",
    actual = "@org_boost__multi_index//:multi_index",
    visibility = ["//visibility:public"],
)
alias(
    name = "bimap",
    actual = "@org_boost__bimap//:bimap",
    visibility = ["//visibility:public"],
)
alias(
    name = "property_map",
    actual = "@org_boost__property_map//:property_map",
    visibility = ["//visibility:public"],
)
alias(
    name = "property_tree",
    actual = "@org_boost__property_tree//:property_tree",
    visibility = ["//visibility:public"],
)
alias(
    name = "ptr_container",
    actual = "@org_boost__ptr_container//:ptr_container",
    visibility = ["//visibility:public"],
)
alias(
    name = "assign",
    actual = "@org_boost__assign//:assign",
    visibility = ["//visibility:public"],
)
alias(
    name = "signals2",
    actual = "@org_boost__signals2//:signals2",
    visibility = ["//visibility:public"],
)
alias(
    name = "sort",
    actual = "@org_boost__sort//:sort",
    visibility = ["//visibility:public"],
)
alias(
    name = "units",
    actual = "@org_boost__units//:units",
    visibility = ["//visibility:public"],
)
alias(
    name = "variant2",
    actual = "@org_boost__variant2//:variant2",
    visibility = ["//visibility:public"],
)
alias(
    name = "histogram",
    actual = "@org_boost__histogram//:histogram",
    visibility = ["//visibility:public"],
)
alias(
    name = "vmd",
    actual = "@org_boost__vmd//:vmd",
    visibility = ["//visibility:public"],
)
alias(
    name = "type_erasure",
    actual = "@org_boost__type_erasure//:type_erasure",
    visibility = ["//visibility:public"],
)
alias(
    name = "poly_collection",
    actual = "@org_boost__poly_collection//:poly_collection",
    visibility = ["//visibility:public"],
)
alias(
    name = "winapi",
    actual = "@org_boost__winapi//:winapi",
    visibility = ["//visibility:public"],
)
alias(
    name = "date_time",
    actual = "@org_boost__date_time//:date_time",
    visibility = ["//visibility:public"],
)
alias(
    name = "icl",
    actual = "@org_boost__icl//:icl",
    visibility = ["//visibility:public"],
)
alias(
    name = "interprocess",
    actual = "@org_boost__interprocess//:interprocess",
    visibility = ["//visibility:public"],
)
alias(
    name = "flyweight",
    actual = "@org_boost__flyweight//:flyweight",
    visibility = ["//visibility:public"],
)
alias(
    name = "pool",
    actual = "@org_boost__pool//:pool",
    visibility = ["//visibility:public"],
)
alias(
    name = "context",
    actual = "@org_boost__context//:context",
    visibility = ["//visibility:public"],
)
alias(
    name = "coroutine2",
    actual = "@org_boost__coroutine2//:coroutine2",
    visibility = ["//visibility:public"],
)
alias(
    name = "fiber",
    actual = "@org_boost__fiber//:fiber",
    visibility = ["//visibility:public"],
)
alias(
    name = "stacktrace",
    actual = "@org_boost__stacktrace//:stacktrace",
    visibility = ["//visibility:public"],
)
alias(
    name = "system",
    actual = "@org_boost__system//:system",
    visibility = ["//visibility:public"],
)
alias(
    name = "chrono",
    actual = "@org_boost__chrono//:chrono",
    visibility = ["//visibility:public"],
)
alias(
    name = "coroutine",
    actual = "@org_boost__coroutine//:coroutine",
    visibility = ["//visibility:public"],
)
alias(
    name = "asio",
    actual = "@org_boost__asio//:asio",
    visibility = ["//visibility:public"],
)
alias(
    name = "beast",
    actual = "@org_boost__beast//:beast",
    visibility = ["//visibility:public"],
)
alias(
    name = "filesystem",
    actual = "@org_boost__filesystem//:filesystem",
    visibility = ["//visibility:public"],
)
alias(
    name = "gil",
    actual = "@org_boost__gil//:gil",
    visibility = ["//visibility:public"],
)
alias(
    name = "nowide",
    actual = "@org_boost__nowide//:nowide",
    visibility = ["//visibility:public"],
)
alias(
    name = "outcome",
    actual = "@org_boost__outcome//:outcome",
    visibility = ["//visibility:public"],
)
alias(
    name = "process",
    actual = "@org_boost__process//:process",
    visibility = ["//visibility:public"],
)
alias(
    name = "random",
    actual = "@org_boost__random//:random",
    visibility = ["//visibility:public"],
)
alias(
    name = "iostreams",
    actual = "@org_boost__iostreams//:iostreams",
    visibility = ["//visibility:public"],
)
alias(
    name = "spirit",
    actual = "@org_boost__spirit//:spirit",
    visibility = ["//visibility:public"],
)
alias(
    name = "convert",
    actual = "@org_boost__convert//:convert",
    visibility = ["//visibility:public"],
)
alias(
    name = "dll",
    actual = "@org_boost__dll//:dll",
    visibility = ["//visibility:public"],
)
alias(
    name = "thread",
    actual = "@org_boost__thread//:thread",
    visibility = ["//visibility:public"],
)
alias(
    name = "contract",
    actual = "@org_boost__contract//:contract",
    visibility = ["//visibility:public"],
)
alias(
    name = "geometry",
    actual = "@org_boost__geometry//:geometry",
    visibility = ["//visibility:public"],
)
alias(
    name = "statechart",
    actual = "@org_boost__statechart//:statechart",
    visibility = ["//visibility:public"],
)
alias(
    name = "timer",
    actual = "@org_boost__timer//:timer",
    visibility = ["//visibility:public"],
)
alias(
    name = "uuid",
    actual = "@org_boost__uuid//:uuid",
    visibility = ["//visibility:public"],
)
alias(
    name = "compute",
    actual = "@org_boost__compute//:compute",
    visibility = ["//visibility:public"],
)
alias(
    name = "numeric_ublas",
    actual = "@org_boost__numeric_ublas//:numeric_ublas",
    visibility = ["//visibility:public"],
)
alias(
    name = "accumulators",
    actual = "@org_boost__accumulators//:accumulators",
    visibility = ["//visibility:public"],
)
alias(
    name = "numeric_odeint",
    actual = "@org_boost__numeric_odeint//:numeric_odeint",
    visibility = ["//visibility:public"],
)
alias(
    name = "wave",
    actual = "@org_boost__wave//:wave",
    visibility = ["//visibility:public"],
)
alias(
    name = "xpressive",
    actual = "@org_boost__xpressive//:xpressive",
    visibility = ["//visibility:public"],
)
alias(
    name = "graph",
    actual = "@org_boost__graph//:graph",
    visibility = ["//visibility:public"],
)
alias(
    name = "graph_parallel",
    actual = "@org_boost__graph_parallel//:graph_parallel",
    visibility = ["//visibility:public"],
)
alias(
    name = "log",
    actual = "@org_boost__log//:log",
    visibility = ["//visibility:public"],
)
alias(
    name = "yap",
    actual = "@org_boost__yap//:yap",
    visibility = ["//visibility:public"],
)
""",
    )
