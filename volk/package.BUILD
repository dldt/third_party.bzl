load("@rules_cc//cc:defs.bzl", "cc_library")

config_setting(
    name = "windows",
    constraint_values = [
        "@platforms//os:windows",
    ],
    visibility = [":__subpackages__"],
)

config_setting(
    name = "linux",
    constraint_values = [
        "@platforms//os:linux",
    ],
)

config_setting(
    name = "osx",
    constraint_values = [
        "@platforms//os:osx",
    ],
)

cc_library(
    name = "volk",
    srcs = ["volk.c"],
    hdrs = ["volk.h"],
    defines = select({
        "windows": ["VK_USE_PLATFORM_WIN32_KHR"],
        "linux": ["VK_USE_PLATFORM_XCB_KHR"],
        "osx": ["VK_USE_PLATFORM_MACOS_MVK"],
    }) + ["VK_NO_PROTOTYPES", "VOLK_STATIC_DEFINES"],
    includes = ["."],
    visibility = ["//visibility:public"],
    deps = ["@vulkan"],
)
