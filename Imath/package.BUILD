# Copied from https://github.com/AcademySoftwareFoundation/openexr/blob/master/bazel/third_party/Imath.BUILD

# SPDX-License-Identifier: BSD-3-Clause
# Copyright (c) Contributors to the OpenEXR Project.

load("@openexr//:bazel/third_party/generate_header.bzl", "generate_header")

generate_header(
    name = "ImathConfig.h",
    substitutions = {
        "@IMATH_INTERNAL_NAMESPACE@": "Imath_3_1",
        "@IMATH_LIB_VERSION@": "3.1.1",
        "@IMATH_NAMESPACE_CUSTOM@": "0",
        "@IMATH_NAMESPACE@": "Imath",
        "@IMATH_PACKAGE_NAME@": "Imath 3.1.1",
        "@IMATH_VERSION_MAJOR@": "3",
        "@IMATH_VERSION_MINOR@": "1",
        "@IMATH_VERSION_PATCH@": "1",
        "@IMATH_VERSION@": "3.1.1",
        "#cmakedefine IMATH_HALF_USE_LOOKUP_TABLE": "#define IMATH_HALF_USE_LOOKUP_TABLE",
        "#cmakedefine IMATH_ENABLE_API_VISIBILITY": "#define IMATH_ENABLE_API_VISIBILITY",
        "#cmakedefine IMATH_HAVE_LARGE_STACK": "/* #undef IMATH_HAVE_LARGE_STACK */",
        "#cmakedefine01 IMATH_USE_NOEXCEPT": "#define IMATH_USE_NOEXCEPT 1",
    },
    template = "config/ImathConfig.h.in",
)

cc_library(
    name = "Imath",
    srcs = [
        "src/Imath/ImathColorAlgo.cpp",
        "src/Imath/ImathFun.cpp",
        "src/Imath/ImathMatrixAlgo.cpp",
        "src/Imath/ImathRandom.cpp",
        "src/Imath/half.cpp",
        "src/Imath/toFloat.h",
    ],
    hdrs = [
        "src/Imath/ImathBox.h",
        "src/Imath/ImathBoxAlgo.h",
        "src/Imath/ImathColor.h",
        "src/Imath/ImathColorAlgo.h",
        "src/Imath/ImathEuler.h",
        "src/Imath/ImathExport.h",
        "src/Imath/ImathForward.h",
        "src/Imath/ImathFrame.h",
        "src/Imath/ImathFrustum.h",
        "src/Imath/ImathFrustumTest.h",
        "src/Imath/ImathFun.h",
        "src/Imath/ImathGL.h",
        "src/Imath/ImathGLU.h",
        "src/Imath/ImathInt64.h",
        "src/Imath/ImathInterval.h",
        "src/Imath/ImathLine.h",
        "src/Imath/ImathLineAlgo.h",
        "src/Imath/ImathMath.h",
        "src/Imath/ImathMatrix.h",
        "src/Imath/ImathMatrixAlgo.h",
        "src/Imath/ImathNamespace.h",
        "src/Imath/ImathPlane.h",
        "src/Imath/ImathPlatform.h",
        "src/Imath/ImathQuat.h",
        "src/Imath/ImathRandom.h",
        "src/Imath/ImathRoots.h",
        "src/Imath/ImathShear.h",
        "src/Imath/ImathSphere.h",
        "src/Imath/ImathTypeTraits.h",
        "src/Imath/ImathVec.h",
        "src/Imath/ImathVecAlgo.h",
        "src/Imath/half.h",
        "src/Imath/halfFunction.h",
        "src/Imath/halfLimits.h",
    ],
    includes = ["src/", "src/Imath/"],
    visibility = ["//visibility:public"],
    deps = [
        ":ImathConfig.h",
    ],
)