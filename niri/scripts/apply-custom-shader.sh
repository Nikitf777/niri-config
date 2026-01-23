#!/bin/sh
set -eu

[ $# -eq 1 ] || { echo "Usage: $0 <shader_file>" >&2; exit 1; }

shader_path="$1"
[ -f "$shader_path" ] || { echo "Error: File not found: $shader_path" >&2; exit 1; }

animation_type=$(basename "$(dirname "$shader_path")")
shader_name=$(basename "$shader_path" .glsl)

output_base="../kdl/generated/custom-shaders"
output_dir="$output_base/$animation_type"
output_file="$output_dir/$shader_name.kdl"

mkdir -p "$output_dir"

"$(dirname "$0")/generate-custom-shader-kdl.sh" "$shader_path" "$animation_type" > "$output_file"
echo "✓ Created: $output_file"
