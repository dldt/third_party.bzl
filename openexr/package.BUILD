load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")
load("@third_party//:defs.bzl", "cmake_configure_file")

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

CMAKE_DEFINES = [
    # IlmBase config
    "ILMBASE_HAVE_LARGE_STACK=1",
    "ILMBASE_INTERNAL_NAMESPACE_CUSTOM=1",
    "ILMBASE_INTERNAL_IMATH_NAMESPACE=Imath_2_5",
    "ILMBASE_INTERNAL_IEX_NAMESPACE=Iex_25",
    "ILMBASE_INTERNAL_ILMTHREAD_NAMESPACE=IlmThread_2_5",
    "ILMBASE_NAMESPACE_CUSTOM=1",
    "ILMBASE_IMATH_NAMESPACE=Imath",
    "ILMBASE_IEX_NAMESPACE=Iex",
    "ILMBASE_ILMTHREAD_NAMESPACE=IlmThread",
    "ILMBASE_VERSION=2.5.4",
    "ILMBASE_PACKAGE_NAME=IlmBase 2.5.4",
    "ILMBASE_VERSION_MAJOR=2",
    "ILMBASE_VERSION_MINOR=5",
    "ILMBASE_VERSION_PATCH=4",
] + select({
    "windows": [],
    "//conditions:default": [
        "HAVE_PTHREAD=1",
        "HAVE_POSIX_SEMAPHORES=1",
    ],
}) + [
    # IlmBaseInternal config
    "HAVE_UCONTEXT_H=1",
    "ILMBASE_HAVE_CONTROL_REGISTER_SUPPORT=1",
    "ILMBASE_HAVE_SIGCONTEXT_CONTROL_REGISTER_SUPPORT=1",
] + [
    # OpenEXR config
    "OPENEXR_NAMESPACE_CUSTOM=1",
    "OPENEXR_INTERNAL_IMF_NAMESPACE=Imf_2_5",
    "OPENEXR_IMF_NAMESPACE=Imf",
    "OPENEXR_VERSION=2.5.4",
    "OPENEXR_PACKAGE_NAME=Imf 2.5.4",
    "OPENEXR_VERSION_MAJOR=2",
    "OPENEXR_VERSION_MINOR=5",
    "OPENEXR_VERSION_PATCH=4",
] + [
    # OpenEXRInternal config
    "OPENEXR_IMF_HAVE_COMPLETE_IOMANIP=1",
] + select({
    "linux": [
        "OPENEXR_IMF_HAVE_LINUX_PROCFS=1",
        "OPENEXR_IMF_HAVE_SYSCONF_NPROCESSORS_ONLN=1",
        "OPENEXR_IMF_HAVE_GCC_INLINE_ASM_AVX=1",
    ],
    "osx": [
        "OPENEXR_IMF_HAVE_DARWIN=1",
        "OPENEXR_IMF_HAVE_SYSCONF_NPROCESSORS_ONLN=1",
        "OPENEXR_IMF_HAVE_GCC_INLINE_ASM_AVX=1",
    ],
    "//conditions:default": [],
})

CMAKE_UNDEFS = select({
    # IlmBase config
    "windows": [
        "HAVE_PTHREAD",
        "HAVE_POSIX_SEMAPHORES",
    ],
    "//conditions:default": [],
}) + select({
    #OpenEXRInternal config
    "windows": [
        "OPENEXR_IMF_HAVE_LINUX_PROCFS",
        "OPENEXR_IMF_HAVE_SYSCONF_NPROCESSORS_ONLN",
        "OPENEXR_IMF_HAVE_DARWIN",
        "OPENEXR_IMF_HAVE_GCC_INLINE_ASM_AVX",
    ],
    "//conditions:default": [],
})

DEFINES = ["OIIO_STATIC_DEFINE"]

# Generates the config headers. Note we don't use the autoconf, but the
# libraries still require a header.
cmake_configure_file(
    name = "ilmbase_config",
    src = "IlmBase/config/IlmBaseConfig.h.in_cmake",
    out = "IlmBaseConfig.h",
    defines = CMAKE_DEFINES,
    undefines = CMAKE_UNDEFS,
)

cmake_configure_file(
    name = "ilmbase_config_internal",
    src = "IlmBase/config/IlmBaseConfigInternal.h.in_cmake",
    out = "IlmBaseConfigInternal.h",
    defines = CMAKE_DEFINES,
    undefines = CMAKE_UNDEFS,
)

cc_library(
    name = "config_ilmbase",
    hdrs = [
        "ilmbase_config_internal",
        ":ilmbase_config",
    ],
)

cc_library(
    name = "half",
    srcs = glob([
        "IlmBase/Half/*.cpp",
        "IlmBase/Half/*.h",
    ]),
    hdrs = glob([
        "IlmBase/Half/*.h",
    ]),
    defines = DEFINES,
    include_prefix = "OpenEXR/",
    strip_include_prefix = "IlmBase/Half/",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "Iex",
    srcs = glob([
        "IlmBase/Iex/*.cpp",
        "IlmBase/Iex/*.h",
    ]),
    hdrs = glob([
        "IlmBase/Iex/*.h",
    ]),
    defines = DEFINES,
    include_prefix = "OpenEXR/",
    strip_include_prefix = "IlmBase/Iex/",
    visibility = ["//visibility:public"],
    deps = [":config_ilmbase"],
)

cc_library(
    name = "Imath",
    srcs = glob([
        "IlmBase/Imath/*.cpp",
        "IlmBase/Imath/*.h",
        "IlmBase/Iex/*.h",
        "IlmBase/half/*.h",
    ]),
    hdrs = glob([
        "IlmBase/Imath/*.h",
    ]),
    defines = DEFINES,
    include_prefix = "OpenEXR/",
    includes = [
        "IlmBase/Iex/",
        "IlmBase/Imath/",
        "IlmBase/half",
    ],
    strip_include_prefix = "IlmBase/Imath/",
    visibility = ["//visibility:public"],
    deps = [
        ":Iex",
        ":config_ilmbase",
        ":half",
    ],
)

cc_library(
    name = "IlmThread",
    srcs = glob(
        [
            "IlmBase/IlmThread/*.cpp",
            "IlmBase/IlmThread/*.h",
        ],
        exclude = [
            "IlmBase/IlmThread/*Win32.cpp",
            "IlmBase/IlmThread/*Posix.cpp",
            "IlmBase/IlmThread/*OSX.cpp",
        ],
    ) + glob([
        "IlmBase/Iex/*.h",
    ]) + select({
        "windows": glob(["IlmBase/IlmThread/*Win32.cpp"]),
        "linux": glob(["IlmBase/IlmThread/*Posix.cpp"]),
        "osx": glob(["IlmBase/IlmThread/*OSX.cpp"]),
    }),
    hdrs = glob(
        [
            "IlmBase/IlmThread/*.h",
        ],
        exclude = [
            "IlmBase/IlmThread/*Win32.h",
            "IlmBase/IlmThread/*Posix.h",
            "IlmBase/IlmThread/*OSX.h",
        ],
    ) + select({
        "windows": glob(["IlmBase/IlmThread/*Win32.h"]),
        "linux": glob(["IlmBase/IlmThread/*Posix.h"]),
        "osx": glob(["IlmBase/IlmThread/*OSX.h"]),
    }),
    defines = DEFINES,
    include_prefix = "OpenEXR/",
    includes = [
        "IlmBase/Iex",
        "IlmBase/IlmThread",
    ],
    strip_include_prefix = "IlmBase/IlmThread/",
    visibility = ["//visibility:public"],
    deps = [
        ":Iex",
        ":config_ilmbase",
    ],
)

cmake_configure_file(
    name = "openexr_config",
    src = "OpenEXR/config/OpenEXRConfig.h.in_cmake",
    out = "OpenEXRConfig.h",
    defines = CMAKE_DEFINES,
    undefines = CMAKE_UNDEFS,
)

cmake_configure_file(
    name = "openexr_config_internal",
    src = "OpenEXR/config/OpenEXRConfigInternal.h.in_cmake",
    out = "OpenEXRConfigInternal.h",
    defines = CMAKE_DEFINES,
    undefines = CMAKE_UNDEFS,
)

cc_library(
    name = "config_openexr",
    hdrs = [
        ":openexr_config",
        ":openexr_config_internal",
    ],
    defines = DEFINES,
    include_prefix = "OpenEXR/",
)

cc_library(
    name = "IlmImf",
    srcs = glob([
        "OpenEXR/IlmImf/*.cpp",
        "IlmBase/Iex/*.h",
        "IlmBase/Imath/*.h",
        "IlmBase/IlmThread/*.h",
    ]) + [
        ":openexr_config",
        ":openexr_config_internal",
    ],
    hdrs = glob([
        "OpenEXR/IlmImf/*.h",
    ]),
    defines = DEFINES,
    include_prefix = "OpenEXR/",
    includes = [
        "IlmBase/Iex/",
        "IlmBase/IlmThread/",
        "IlmBase/Imath",
        "OpenEXR/IlmImf/",
    ],
    strip_include_prefix = "OpenEXR/IlmImf/",
    visibility = ["//visibility:public"],
    deps = [
        ":Iex",
        ":IlmThread",
        ":Imath",
        ":config_openexr",
        "@zlib",
    ],
)

cc_binary(
    name = "exrheader",
    srcs = ["OpenEXR/exrheader/main.cpp"],
    visibility = ["//visibility:public"],
    deps = [":IlmImf"],
)
