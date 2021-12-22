load("@bazel_skylib//rules:copy_file.bzl", "copy_file")
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

SDL_SRCS = glob([
    "src/*.c",
    "src/*.h",
    "src/*/*.c",
    "src/*/*.h",
    "src/audio/dummy/*.c",
    "src/audio/dummy/*.h",
    "src/audio/disk/*.c",
    "src/audio/disk/*.h",
    "src/audio/dsp/*.c",
    "src/audio/dsp/*.h",
    "src/haptic/*.c",
    "src/haptic/*.h",
    "src/haptic/dummy/*.c",
    "src/hidapi/hidapi/*.h",
    "src/joystick/dummy/*.c",
    "src/joystick/hidapi/*.c",
    "src/joystick/hidapi/*.h",
    "src/joystick/virtual/*.c",
    "src/joystick/virtual/*.h",
    "src/misc/*.c",
    "src/misc/*.h",
    "src/power/*.c",
    "src/power/*.h",
    "src/render/software/*.c",
    "src/render/software/*.h",
    "src/render/opengl/*.c",
    "src/render/opengl/*.h",
    "src/sensor/dummy/*.c",
    "src/sensor/dummy/*.h",
    "src/thread/*.c",
    "src/thread/*.h",
    "src/video/dummy/*.c",
    "src/video/dummy/*.h",
    "src/video/khronos/vulkan/*.h",
    "src/video/yuv2rgb/*.c",
    "src/video/yuv2rgb/*.h",
])

SDL_HEADERS = glob(
    ["include/*.h"],
    exclude = ["include/SDL_config.h"],
) + [":SDL_config_h"]

copy_file(
    name = "SDL_config_h",
    src = select({
        ":linux": "@third_party//SDL:SDL_config_linux.h",
        ":osx": "@third_party//SDL:SDL_config_osx.h",
        ":windows": "@third_party//SDL:SDL_config_windows.h",
    }),
    out = "SDL_config.h",
)

objc_library(
    name = "SDL_osx",
    srcs = SDL_SRCS + glob(
        [
            "src/audio/coreaudio/*.h",
            "src/file/cocoa/*.h",
            "src/haptic/darwin/*.c",
            "src/haptic/darwin/*.h",
            "src/joystick/darwin/*.c",
            "src/joystick/darwin/*.h",
            "src/loadso/dlopen/*.c",
            "src/main/dummy/*.c",
            "src/power/macosx/*.c",
            "src/render/metal/*.h",
            "src/sensor/coremotion/*.h",
            "src/timer/unix/*.c",
            "src/thread/generic/SDL_systhread_c.*",
            "src/thread/pthread/*.c",
            "src/thread/pthread/*.h",
            "src/video/cocoa/*.h",
        ],
    ),
    hdrs = SDL_HEADERS,
    includes = [
        "include/",
        "src/",
    ],
    non_arc_srcs = glob([
        "src/audio/coreaudio/*.m",
        "src/file/cocoa/*.m",
        "src/filesystem/cocoa/*.m",
        "src/locale/macosx/*m",
        "src/misc/macosx/*.m",
        "src/render/metal/*.m",
        "src/sensor/coremotion/*.m",
        "src/video/cocoa/*.m",
    ]),
    textual_hdrs = ["src/thread/generic/SDL_syssem.c"],
    weak_sdk_frameworks = [
        "CoreAudio",
        "Carbon",
        "Cocoa",
        "IOKit",
        "UIKit",
        "CoreGraphics",
        "Metal",
        "GameController",
    ],
)

cc_library(
    name = "SDL_linux",
    srcs = SDL_SRCS + glob(
        [
            "src/audio/alsa/*.c",
            "src/audio/alsa/*.h",
            "src/core/linux/SDL_dbus.*",
            "src/core/linux/SDL_evdev.*",
            "src/core/linux/SDL_evdev_capabilities.*",
            "src/core/linux/SDL_evdev_kbd.*",
            "src/core/linux/SDL_evdev_kbd_default_accents.*",
            "src/core/linux/SDL_evdev_kbd_default_keymap.*",
            "src/core/linux/SDL_threadprio.*",
            "src/core/linux/SDL_udev.*",
            "src/core/unix/*.c",
            "src/core/unix/*.h",
            "src/audio/pulseaudio/*.c",
            "src/audio/pulseaudio/*.h",
            "src/filesystem/unix/*.c",
            "src/haptic/linux/*.c",
            "src/joystick/linux/*.c",
            "src/joystick/linux/*.h",
            "src/joystick/steam/*.c",
            "src/joystick/steam/*.h",
            "src/loadso/dlopen/*.c",
            "src/locale/unix/*.c",
            "src/misc/unix/*.c",
            "src/power/linux/*.c",
            "src/timer/unix/*.c",
            "src/thread/generic/SDL_systhread_c.*",
            "src/thread/pthread/*.c",
            "src/thread/pthread/*.h",
            "src/video/x11/*.c",
            "src/video/x11/*.h",
        ],
        exclude = [
            "src/video/x11/SDL_x11opengles.c",
            "src/render/opengles2/SDL_render_gles*.c",
        ],
    ) + ["src/core/linux/SDL_ime.h"],
    hdrs = SDL_HEADERS,
    includes = [
        "include/",
        "src/",
    ],
    linkopts = [
        "-ldl",
        "-pthread",
    ],
)

cc_library(
    name = "SDL_windows",
    srcs = SDL_SRCS + glob(
        [
            "src/audio/winmm/*.c",
            "src/audio/winmm/*.h",
            "src/audio/wasapi/*.c",
            "src/audio/wasapi/*.h",
            "src/audio/directsound/*.c",
            "src/audio/directsound/*.h",
            "src/core/windows/*.c",
            "src/core/windows/*.h",
            "src/filesystem/windows/*.c",
            "src/haptic/windows/*.c",
            "src/haptic/windows/*.h",
            "src/joystick/windows/*.c",
            "src/joystick/windows/*.h",
            "src/loadso/windows/*.c",
            "src/locale/windows/*.c",
            "src/misc/windows/*.c",
            "src/power/windows/*.c",
            "src/render/direct3d/*.c",
            "src/render/direct3d/*.h",
            "src/render/direct3d11/*.c",
            "src/render/direct3d11/*.h",
            "src/sensor/windows/*.c",
            "src/sensor/windows/*.h",
            "src/thread/generic/SDL_syscond.*",
            "src/thread/windows/*.c",
            "src/thread/windows/*.h",
            "src/timer/windows/*.c",
            "src/video/windows/*.c",
            "src/video/windows/*.h",
        ],
    ),
    hdrs = SDL_HEADERS,
    includes = [
        "include/",
        "src/",
    ],
    linkopts = [
        "-DEFAULTLIB:user32",
        "-DEFAULTLIB:gdi32",
        "-DEFAULTLIB:winmm",
        "-DEFAULTLIB:imm32",
        "-DEFAULTLIB:ole32",
        "-DEFAULTLIB:oleaut32",
        "-DEFAULTLIB:version",
        "-DEFAULTLIB:uuid",
        "-DEFAULTLIB:advapi32",
        "-DEFAULTLIB:setupapi",
        "-DEFAULTLIB:shell32",
        "-DEFAULTLIB:dinput8",
    ],
)

cc_library(
    name = "SDL_main_windows",
    srcs = [
        "include/SDL_main.h",
        "src/main/windows/SDL_windows_main.c",
    ],
    deps = [":SDL"],
)

cc_library(
    name = "SDL_main_unix",
    srcs = [
        "include/SDL_main.h",
        "src/main/dummy/SDL_dummy_main.c",
    ],
    deps = [":SDL"],
)

alias(
    name = "SDL",
    actual = select({
        ":windows": ":SDL_windows",
        ":linux": ":SDL_linux",
        ":osx": "SDL_osx",
    }),
    visibility = ["//visibility:public"],
)

alias(
    name = "SDL_main",
    actual = select({
        ":windows": ":SDL_main_windows",
        ":linux": ":SDL_main_unix",
        ":osx": "SDL_main_unix",
    }),
    visibility = ["//visibility:public"],
)
