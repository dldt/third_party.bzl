load("@rules_cc//cc:defs.bzl", "cc_library")
load("@third_party//:defs.bzl", "cmake_configure_file")

cmake_configure_file(
    name = "libfswatch_config.h",
    src = "libfswatch/libfswatch_config.in",
    out = "libfswatch/libfswatch_config.h",
    defines = [
            "LOCALEDIR=/usr/local/share/locale",
            "PACKAGE=fswatch",
            "PACKAGE_NAME=fswatch",
            "PACKAGE_VERSION=1.17.1-develop",
            "PACKAGE_STRING=fswatch 1.17.1-develop",
            "PACKAGE_BUGREPORT=do@not.report",
            "PACKAGE_TARNAME=fswatch",
            "PACKAGE_URL=https://github.com/emcrisostomo/fswatch",
        ] + select({
        "@platforms//os:linux": [
            "HAVE_GETOPT_LONG=",
            "HAVE_STRUCT_STAT_ST_MTIME",
            "HAVE_SYS_INOTIFY_H",
            "HAVE_UNORDERED_MAP",
            "HAVE_UNORDERED_SET",
        ],
        "@platforms//os:windows": [
            "HAVE_GETOPT_LONG=",
            "HAVE_WINDOWS",
            "HAVE_UNORDERED_MAP",
            "HAVE_UNORDERED_SET",
        ],
        "@platforms//os:osx": [
            "HAVE_STRUCT_STAT_ST_MTIME",
            "HAVE_FSEVENTS_FSEVENTSTREAMSETDISPATCHQUEUE",
            "HAVE_UNORDERED_MAP",
            "HAVE_UNORDERED_SET",
        ],
        "//conditions:default": []
    }),
    undefines = [
        "ENABLE_NLS",
    ],
)

cc_library(
    name = "fswatch",
    srcs = [
        "libfswatch/src/libfswatch/gettext.h",
        "libfswatch/src/libfswatch/gettext_defs.h",
        "libfswatch/src/libfswatch/c/cevent.cpp",
        "libfswatch/src/libfswatch/c/libfswatch.cpp",
        "libfswatch/src/libfswatch/c/libfswatch_log.cpp",
        "libfswatch/src/libfswatch/c++/event.cpp",
        "libfswatch/src/libfswatch/c++/filter.cpp",
        "libfswatch/src/libfswatch/c++/libfswatch_exception.cpp",
        "libfswatch/src/libfswatch/c++/monitor.cpp",
        "libfswatch/src/libfswatch/c++/monitor_factory.cpp",
        "libfswatch/src/libfswatch/c++/path_utils.cpp",
        "libfswatch/src/libfswatch/c++/poll_monitor.cpp",
        "libfswatch/src/libfswatch/c++/string/string_utils.cpp",
        ":libfswatch_config.h"] + select({
            "@platforms//os:linux": [
                "libfswatch/src/libfswatch/c++/inotify_monitor.hpp",
                "libfswatch/src/libfswatch/c++/inotify_monitor.cpp",
            ],
            "@platforms//os:windows": [
                "libfswatch/src/libfswatch/c++/windows_monitor.hpp",
                "libfswatch/src/libfswatch/c++/windows_monitor.cpp",
            ],
        }),
    hdrs = [
        "libfswatch/src/libfswatch/c/cevent.h",
        "libfswatch/src/libfswatch/c/cfilter.h",
        "libfswatch/src/libfswatch/c/cmonitor.h",
        "libfswatch/src/libfswatch/c/error.h",
        "libfswatch/src/libfswatch/c/libfswatch.h",
        "libfswatch/src/libfswatch/c/libfswatch_log.h",
        "libfswatch/src/libfswatch/c/libfswatch_types.h",
        "libfswatch/src/libfswatch/c++/event.hpp",
        "libfswatch/src/libfswatch/c++/filter.hpp",
        "libfswatch/src/libfswatch/c++/libfswatch_exception.hpp",
        "libfswatch/src/libfswatch/c++/libfswatch_map.hpp",
        "libfswatch/src/libfswatch/c++/libfswatch_set.hpp",
        "libfswatch/src/libfswatch/c++/monitor.hpp",
        "libfswatch/src/libfswatch/c++/monitor_factory.hpp",
        "libfswatch/src/libfswatch/c++/path_utils.hpp",
        "libfswatch/src/libfswatch/c++/poll_monitor.hpp",
        "libfswatch/src/libfswatch/c++/string/string_utils.hpp",
    ],
    includes = [".", "libfswatch/src/"],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "fswatch-cli",
    srcs = [
        "fswatch/src/fswatch.cpp",
        "fswatch/src/fswatch.hpp",
        "fswatch/src/gettext.h",
    ],
    deps = [":libfswatch"],
)