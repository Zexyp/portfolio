#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "var is unset"
    exit 1
fi

mkdir "docs/gallery/posts/$1"
mkdir "docs/gallery/posts/$1/assets"
#$(date '+%Y-%m-%d')

cat > "docs/gallery/posts/$1/index.md" <<EOF
---
date: 1000-01-01
title: "$1"
draft: true
---
EOF
