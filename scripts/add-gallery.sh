#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "var is unset"
    exit 1
fi

mkdir "docs/gallery/posts/$1"
mkdir "docs/gallery/posts/$1/assets"

cat > "docs/gallery/posts/$1/index.md" <<EOF
---
date: $(date '+%Y-%m-%d')
title: $1
---
EOF
