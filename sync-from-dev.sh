#!/bin/zsh
# 開発版 fortune.html を公開用 index.html に反映
ROOT="$(dirname "$0")"
cp "$ROOT/../ikumou-type-tool/fortune.html" "$ROOT/index.html"
echo "✓ index.html を更新しました"
echo "  タロット画像も更新する場合:"
echo "  cp -R ../ikumou-type-tool/tarot-img ./tarot-img"
