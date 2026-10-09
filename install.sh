#!/usr/bin/env bash
# ============================================================
#  药老 · Yao Lao —— 一键安装
#  把专家包安装到本机 WorkBuddy 的专家目录
# ============================================================
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/expert"
CFG="${WORKBUDDY_CONFIG_DIR:-$HOME/.workbuddy}"
DEST_ROOT="$CFG/plugins/marketplaces/my-experts/plugins"
DEST="$DEST_ROOT/yaolao"

echo "=============================================="
echo "  药老 · Yao Lao —— 安装"
echo "=============================================="
echo
echo "源目录：$SRC"
echo "目标：  $DEST"
echo

if [ ! -d "$SRC" ]; then
  echo "❌ 找不到 expert/ 目录。请在仓库根目录运行本脚本。"
  exit 1
fi

if [ -d "$DEST" ]; then
  echo "⚠️  目标已存在，将覆盖。"
  printf "   继续？[y/N] "
  read -r ans
  case "$ans" in
    y|Y) rm -rf "$DEST" ;;
    *) echo "已取消。"; exit 0 ;;
  esac
fi

mkdir -p "$DEST_ROOT"
cp -R "$SRC" "$DEST"

echo "✅ 已安装到：$DEST"
echo
echo "----------------------------------------------"
echo "  下一步（重要）"
echo "----------------------------------------------"
echo "  1. 打开 $DEST/agents/yaolao.md"
echo "  2. 找到「第一步：先看数据」"
echo "  3. 把那张表换成你自己的真实数据源"
echo
echo "  不做这一步，药老就只是一个语气严厉的聊天机器人。"
echo
echo "  4. 重启 WorkBuddy，在「专家 → 我的专家」里使用"
echo
