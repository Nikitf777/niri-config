#!/bin/sh
set -eu

find ../shaders -type f -name '*.glsl' | while IFS= read -r shader; do
    "$(dirname "$0")/apply-custom-shader.sh" "$shader"
done
