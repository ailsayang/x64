cmake_minimum_required(VERSION 2.8)

execute_process(
COMMAND git rev-parse --abbrev-ref HEAD
WORKING_DIRECTORY "/home/yang33/PixelAnnotationTool-master"
OUTPUT_VARIABLE GIT_BRANCH
OUTPUT_STRIP_TRAILING_WHITESPACE
)
execute_process(
COMMAND git log -1 --format=%h
WORKING_DIRECTORY "/home/yang33/PixelAnnotationTool-master"
OUTPUT_VARIABLE GIT_COMMIT_HASH
OUTPUT_STRIP_TRAILING_WHITESPACE
)
execute_process(
COMMAND git log -1 --format=%ai
WORKING_DIRECTORY "/home/yang33/PixelAnnotationTool-master"
OUTPUT_VARIABLE GIT_COMMIT_DATE
OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
COMMAND git describe
WORKING_DIRECTORY "/home/yang33/PixelAnnotationTool-master"
OUTPUT_VARIABLE GIT_TAG
OUTPUT_STRIP_TRAILING_WHITESPACE
)

set(ARCH_TYPE "x86_64")
message(STATUS "update git version")

configure_file(
  /home/yang33/PixelAnnotationTool-master/pixel_annotation_tool_version.h.in
  /home/yang33/PixelAnnotationTool-master/x64/pixel_annotation_tool_version.h
)
