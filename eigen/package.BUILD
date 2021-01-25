load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "eigen",
    hdrs = glob(
        [
            "Eigen/**",
            "unsupported/Eigen/CXX11/**",
            "unsupported/Eigen/FFT",
            "unsupported/Eigen/KroneckerProduct",
            "unsupported/Eigen/src/FFT/**",
            "unsupported/Eigen/src/KroneckerProduct/**",
            "unsupported/Eigen/MatrixFunctions",
            "unsupported/Eigen/SpecialFunctions",
            "unsupported/Eigen/src/MatrixFunctions/**",
            "unsupported/Eigen/src/SpecialFunctions/**",
        ],
        exclude = [
            "Eigen/src/Core/arch/AVX/PacketMathGoogleTest.cc",
        ],
    ),
    includes = ["."],
    visibility = ["//visibility:public"],
)
