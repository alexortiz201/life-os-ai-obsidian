#!/usr/bin/env bash
set -e

echo "-----------------------------------------------"
echo " Obsidian Life OS — Setup Wizard"
echo "-----------------------------------------------"
echo ""

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUNDLE_PATH="${SCRIPT_DIR}/OBSIDIAN_LIFE_OS_bundle.zip"

if [ ! -f "$BUNDLE_PATH" ]; then
  echo "❌ Could not find bundle at: $BUNDLE_PATH"
  echo "Place 'OBSIDIAN_LIFE_OS_bundle.zip' next to this script and run again."
  exit 1
fi

echo "🔍 Checking for Obsidian installation..."
OBS_FOUND="false"
if command -v open >/dev/null 2>&1; then
  if /usr/bin/osascript -e 'id of app "Obsidian"' >/dev/null 2>&1; then
    OBS_FOUND="mac"
  elif [ -d "/Applications/Obsidian.app" ]; then
    OBS_FOUND="mac"
  fi
fi
if [ "$OBS_FOUND" = "false" ]; then
  if command -v obsidian >/dev/null 2>&1; then
    OBS_FOUND="linux"
  elif command -v flatpak >/dev/null 2>&1 && flatpak info md.obsidian.Obsidian >/dev/null 2>&1; then
    OBS_FOUND="linux_flatpak"
  fi
fi
if [ "$OBS_FOUND" = "false" ]; then
  echo "⚠️  Obsidian not detected. Download: https://obsidian.md/download"
else
  echo "✅ Obsidian detected ($OBS_FOUND)."
fi

echo ""
echo "Where is your Obsidian vault directory?"
echo "  1) ~/Documents/Obsidian"
echo "  2) ~/ObsidianVaults"
echo "  3) Custom path"
read -p "Select option (1-3): " CHOICE
case "$CHOICE" in
  1) BASE_DIR="$HOME/Documents/Obsidian" ;;
  2) BASE_DIR="$HOME/ObsidianVaults" ;;
  3) read -p "Enter full path: " CUSTOM; BASE_DIR="$CUSTOM" ;;
  *) echo "Invalid selection."; exit 1 ;;
esac

mkdir -p "$BASE_DIR"
TARGET_DIR="${BASE_DIR}/Life_OS"
echo ""
echo "📦 Installing Life OS to: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
unzip -o "$BUNDLE_PATH" -d "$TARGET_DIR" >/dev/null
echo "✅ Installation complete."

echo ""
read -p "Open Obsidian to this vault now? (y/n): " OPEN_NOW
if [[ "$OPEN_NOW" == "y" || "$OPEN_NOW" == "Y" ]]; then
  if [ "$OBS_FOUND" = "mac" ]; then
    open -a "Obsidian" "$TARGET_DIR"
  elif [ "$OBS_FOUND" = "linux" ]; then
    obsidian "$TARGET_DIR" >/dev/null 2>&1 &
  elif [ "$OBS_FOUND" = "linux_flatpak" ]; then
    flatpak run md.obsidian.Obsidian "$TARGET_DIR" >/dev/null 2>&1 &
  else
    echo "Open manually via Obsidian → Open folder as vault: $TARGET_DIR"
  fi
else
  echo "Open later via Obsidian → Open folder as vault: $TARGET_DIR"
fi

echo ""
echo "✨ Done. Enjoy building your world, Architect."
