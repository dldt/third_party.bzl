load("@rules_cc//cc:defs.bzl", "cc_library", "objc_library")

config_setting(
    name = "windows",
    constraint_values = [
        "@platforms//os:windows",
    ],
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
    name = "glfw-win32",
    srcs = [
        "src/wgl_context.c",
        "src/win32_init.c",
        "src/win32_joystick.c",
        "src/win32_monitor.c",
        "src/win32_thread.c",
        "src/win32_time.c",
        "src/win32_window.c",
    ],
    hdrs = glob([
        "include/**/*.h",
        "src/**/*.h",
    ]),
    defines = ["_GLFW_WIN32"],
    linkopts = [
        "-DEFAULTLIB:user32.lib",
        "-DEFAULTLIB:gdi32.lib",
        "-DEFAULTLIB:shell32.lib",
        "-DEFAULTLIB:opengl32.lib",
    ],
    linkstatic = True,
)

cc_library(
    name = "glfw-linux",
    srcs = [
        "src/glx_context.c",
        "src/linux_joystick.c",
        "src/posix_thread.c",
        "src/posix_time.c",
        "src/x11_init.c",
        "src/x11_monitor.c",
        "src/x11_window.c",
        "src/xkb_unicode.c",
    ],
    hdrs = glob([
        "include/**/*.h",
        "src/**/*.h",
    ]),
    defines = ["_GLFW_X11"],
    linkopts = [
        "-ldl",
        "-lX11",
        "-lGL",
    ],
    linkstatic = True,
    local_defines = [
        "_GLFW_HAS_XF86VM",
    ],
    alwayslink = True,
)

objc_library(
    name = "glfw-osx",
    srcs = [
        "src/cocoa_time.c",
        "src/posix_thread.c",
    ],
    hdrs = glob([
        "include/**/*.h",
        "src/**/*.h",
    ]),
    defines = ["_GLFW_COCOA"],
    non_arc_srcs = [
        "src/cocoa_init.m",
        "src/cocoa_joystick.m",
        "src/cocoa_monitor.m",
        "src/cocoa_window.m",
        "src/nsgl_context.m",
    ],
    sdk_frameworks = [
        "Cocoa",
        "IOKit",
        "CoreFoundation",
        "OpenGL",
    ],
    alwayslink = True,
)

cc_library(
    name = "glfw",
    srcs = [
        "src/context.c",
        "src/egl_context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/osmesa_context.c",
        "src/vulkan.c",
        "src/window.c",
    ],
    hdrs = [
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
    ],
    defines = select({
        "windows": ["_GLFW_WIN32"],
        "linux": ["_GLFW_X11"],
        "osx": ["_GLFW_COCOA"],
    }),
    linkstatic = True,
    strip_include_prefix = "include/",
    visibility = ["//visibility:public"],
    deps = select({
        "windows": ["glfw-win32"],
        "linux": ["glfw-linux"],
        "osx": ["glfw-osx"],
    }),
    alwayslink = True,
)
