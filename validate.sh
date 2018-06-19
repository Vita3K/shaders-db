#! /bin/bash
set -ex

find shaders -name "*.frag" -or -name "*.vert" | xargs glslangValidator
