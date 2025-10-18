# 🧠 Obsidian Life OS — Core + Lore System

<p align="left">
  <img src="https://img.shields.io/badge/version-1.0.0-blue.svg" alt="version">
  <img src="https://img.shields.io/badge/license-MIT-green.svg" alt="license">
  <img src="https://img.shields.io/badge/made%20for-Obsidian-purple.svg" alt="made for obsidian">
  <img src="https://img.shields.io/badge/theme-The_Architect's_Odyssey-9cf.svg" alt="theme">
</p>

Welcome to **Obsidian Life OS**, a modular, dual-mode framework for builders, creators, and lifelong learners who want to live with intention.

> **Core Mode:** a clean, minimal system for daily execution and reflection
> **Lore Mode:** an anime/RPG-style narrative overlay that turns mastery into adventure

## 📸 Screenshots & Demo

| Mode                           | Preview                                                  | Description                                           |
| ------------------------------ | -------------------------------------------------------- | ----------------------------------------------------- |
| 🧭 **Core System**             | ![Core Dashboard](./docs/screenshots/core_dashboard.png) | Your clean, structured weekly workflow.               |
| ⚔️ **The Architect’s Odyssey** | ![Lore Mode](./docs/screenshots/lore_mode.png)           | Gamified, anime/RPG-style progression log.            |
| 🧩 **Themes System**           | ![Themes Folder](./docs/screenshots/themes_folder.png)   | Easily extensible — create your own theme expansions. |

> @TODO: Add your screenshots under `/docs/screenshots/` and replace the file names above.

## 🚀 Quick Install

### 1️⃣ Download

Clone this repo or grab the latest release:

```bash
git clone https://github.com/alexortiz201/life-os-ai-obsidian.git
```

or download:

- [OBSIDIAN_LIFE_OS_bundle.zip](./OBSIDIAN_LIFE_OS_bundle.zip)
- [setup_life_os.command](./setup_life_os.command)

---

### 2️⃣ Run the Installer (macOS / Linux)

```bash
chmod +x setup_life_os.command
./setup_life_os.command
```

The interactive wizard will:

1. Detect your Obsidian installation.
2. Ask where your vaults live (or let you type a custom path).
3. Unzip the bundle into `Life_OS/`.
4. Optionally launch Obsidian directly to the new vault.

---

### 🗂 Folder Structure

```
Life_OS/
├─ Core_System/               # Reality layer (Wealth, Health, Love, Evolution)
├─ The_Architects_Odyssey/    # Lore layer (anime/RPG overlay)
├─ Themes/                    # Active theme assets
├─ Expansion/                 # Theme mappings & JSONC manifests
├─ Templates/                 # Templater templates
├─ Logs/                      # Routine inputs, daily logs and weekly dashboard
├─ Enhancement_Notes.md
├─ Life_OS_Obsidian_User_Manual.md  # User manual
├─ Tips.md                          # Quick tips & setup guidance
└─ README.md
```

---

### 🧩 Plugins Required

Enable these Community Plugins inside Obsidian:

- Dataview – dynamic lists of Arcs & Quests
- Tracker – XP and habit charts
- Templater – reusable note templates
- (Optional) Hotkeys for templates – allows hotkeys for create to be mapped <From-Template> into <Folder>
- (Optional) Kanban / Style Settings for visual dashboards
- (Optional) Periodic Notes - Automate Daily and Weekly templated notes

_See Tips.md for setup details._

---

### 🎮 Modes

| Mode                           | Focus                         | Entry Point                                 |
| ------------------------------ | ----------------------------- | ------------------------------------------- |
| 🧭 **Core System**             | Real-world tasks & reflection | `Core_System/Weekly_Dashboard.md`           |
| ⚔️ **The Architect’s Odyssey** | Gamified story mode           | `The_Architects_Odyssey/Character_Sheet.md` |

### 🌌 Create Your Own Expansion / Theme

To design your own Lore overlay:

1. Copy TEMPLATE_EXPANSION.jsonc and TEMPLATE_EXPANSION.md to Expansion/<YourThemeName>/.
2. Add your assets to Themes/<YourThemeName>/.
3. Adjust colors, icons, and plugins.

`Obsidian Life OS will automatically map new realms and arcs from your manifest.`

---

### 🧠 Concept Overview

    •	Realms: Wealth | Health | Love | Evolution
    •	Arcs: Skill or project tracks (e.g., Front-End Arc, MCP Arc)
    •	Quests: Main / Side / Daily objectives
    •	XP System: Earn XP for actions (journaling, deep work, father-son lab, training)
    •	Shadow Encounters: Moments of resistance turned into growth

---

### 📈 Next Steps

After installation:

1. Open Obsidian → Life OS vault.
2. Read through Tips.md.
3. Customize your Daily Notes, Weekly Dashboard and Character Sheet.
4. (Optional) Commit your changes to GitHub to share your setup.

---

### 🧙‍♂️ The Architect’s Oath

“When discipline fades, story keeps the fire alive.”
Build, reflect, evolve — and turn your life into a living saga.
