load("@rules_cc//cc:defs.bzl", "cc_library", "objc_library")

cc_library(
    name = "imgui",
    srcs = glob(["*.cpp"]),
    hdrs = glob(["*.h"]),
    visibility = ["//visibility:public"],
)

# Platform
objc_library(
    name = "osx",
    srcs = ["backends/imgui_impl_osx.mm"],
    hdrs = ["backends/imgui_impl_osx.h"],
    deps = [":imgui"],
    target_compatible_with = select({
        "@platforms//os:osx": [],
        "//conditions:default": ["@platforms//:incompatible"],
    }),
    visibility = ["//visibility:public"],
)

cc_library(
    name = "sdl",
    srcs = ["backends/imgui_impl_sdl.cpp"],
    hdrs = ["backends/imgui_impl_sdl.h"],
    visibility = ["//visibility:public"],
    deps = [":imgui", "@SDL"],
)

cc_library(
    name = "win32",
    srcs = ["backends/imgui_impl_win32.cpp"],
    hdrs = ["backends/imgui_impl_win32.h"],
    visibility = ["//visibility:public"],
    deps = [":imgui"],
    target_compatible_with = ["@platforms//os:windows"],
)

# Renderers
cc_library(
    name = "dx12",
    srcs = ["backends/imgui_impl_dx12.cpp"],
    hdrs = ["backends/imgui_impl_dx12.h"],
    visibility = ["//visibility:public"],
    deps = [":imgui"],
    target_compatible_with = ["@platforms//os:windows"],
)

objc_library(
    name = "metal",
    srcs = ["backends/imgui_impl_metal.mm"],
    hdrs = ["backends/imgui_impl_metal.h"],
    visibility = ["//visibility:public"],
    deps = [":imgui"],
    target_compatible_with = ["@platforms//os:osx"],
)

cc_library(
    name = "vulkan",
    srcs = ["backends/imgui_impl_vulkan.cpp"],
    hdrs = ["backends/imgui_impl_vulkan.h"],
    deps = [":imgui", "@vulkan-headers"],
    visibility = ["//visibility:public"],
)
