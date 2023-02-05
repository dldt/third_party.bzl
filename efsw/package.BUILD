load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "efsw",
    srcs = [
        "src/efsw/Debug.cpp",
	    "src/efsw/DirectorySnapshot.cpp",
	    "src/efsw/DirectorySnapshotDiff.cpp",
	    "src/efsw/DirWatcherGeneric.cpp",
	    "src/efsw/FileInfo.cpp",
	    "src/efsw/FileSystem.cpp",
	    "src/efsw/FileWatcher.cpp",
	    "src/efsw/FileWatcherCWrapper.cpp",
	    "src/efsw/FileWatcherGeneric.cpp",
	    "src/efsw/FileWatcherImpl.cpp",
	    "src/efsw/Log.cpp",
	    "src/efsw/Mutex.cpp",
	    "src/efsw/String.cpp",
	    "src/efsw/System.cpp",
	    "src/efsw/Thread.cpp",
	    "src/efsw/Watcher.cpp",
	    "src/efsw/WatcherGeneric.cpp",
    ] + select({
        "@platforms//os:windows": [
       	    "src/efsw/platform/win/FileSystemImpl.cpp",
		    "src/efsw/platform/win/MutexImpl.cpp",
		    "src/efsw/platform/win/SystemImpl.cpp",
		    "src/efsw/platform/win/ThreadImpl.cpp",
        ],
        "//conditions:default": [
		    "src/efsw/platform/posix/FileSystemImpl.cpp",
		    "src/efsw/platform/posix/MutexImpl.cpp",
		    "src/efsw/platform/posix/SystemImpl.cpp",
		    "src/efsw/platform/posix/ThreadImpl.cpp",
        ],
    }) + select({
        "@platforms//os:windows": [
		    "src/efsw/FileWatcherWin32.cpp",
		    "src/efsw/WatcherWin32.cpp",
        ],
        "@platforms//os:osx": [
		    "src/efsw/FileWatcherFSEvents.cpp",
		    "src/efsw/FileWatcherKqueue.cpp",
		    "src/efsw/WatcherFSEvents.cpp",
		    "src/efsw/WatcherKqueue.cpp",
        ],
        "@platforms//os:linux": [
		    "src/efsw/FileWatcherInotify.cpp",
		    "src/efsw/WatcherInotify.cpp",
        ],
    }) + glob([
        "src/efsw/**/*.h",
        "src/efsw/**/*.hpp",
        "src/efsw/**/*.inl",
    ]),
    hdrs = [
        "include/efsw/efsw.h",
        "include/efsw/efsw.hpp",
    ],
    includes = ["src/", "include/"],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "efsw-test",
    srcs = [
        "src/test/efsw-test.cpp",
    ] + glob([
        "src/efsw/**/*.h",
        "src/efsw/**/*.hpp",
        "src/efsw/**/*.inl",
    ]),
    includes = ["src/"],
    deps = [":efsw"],
    visibility = ["//visibility:public"],
)
