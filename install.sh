#!/bin/bash
# ecom-product-hero — one-line install for Claude Code
# Usage: curl -fsSL https://raw.githubusercontent.com/wuxinpro/ecom-product-hero/main/install.sh | bash

set -e
SKILL_DIR="$HOME/.claude/skills/ecom-product-hero"
REPO_URL="https://github.com/wuxinpro/ecom-product-hero.git"

if [ -d "$SKILL_DIR" ]; then
  echo "==> Updating existing install at $SKILL_DIR ..."
  cd "$SKILL_DIR" && git pull
else
  echo "==> Installing ecom-product-hero to $SKILL_DIR ..."
  git clone --depth 1 "$REPO_URL" "$SKILL_DIR"
fi

echo ""
echo "✅ ecom-product-hero installed!"
echo "   Try: '帮我用 ecom-product-hero 做一张产品海报'"
