#!/bin/sh
set -eu

[ $# -eq 2 ] || { echo "Usage: $0 <shader_file> <animation_type>" >&2; exit 1; }

shader_file="$1"
animation_type="$2"

[ -f "$shader_file" ] || { echo "Error: Shader file not found: $shader_file" >&2; exit 1; }

cat <<EOF
animations {
    $animation_type {
        custom-shader r"
EOF

# Escape special chars and indent shader content
sed -e 's/[\\"]/\\&/g' -e 's/^/          /' "$shader_file"

cat <<EOF
        "
    }
}
EOF
