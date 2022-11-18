load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "foo",
    srcs = ["foo.cpp"],
    hdrs = ["include/foo.h"],
    copts = ["-Iinclude/foo_dir", "-std=c++14"],
    visibility = ["//src:__pkg__", "//tests:__pkg__"],
)
