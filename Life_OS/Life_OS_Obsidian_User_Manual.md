# 📘 Life‑OS in Obsidian — Step‑by‑Step Manual

This manual shows you exactly how to use your **Life‑OS** inside Obsidian, with **explicit file paths** and **click-by-click** setup for plugins and workflows.

> If you see a section like “Focus Arc,” this manual prefixes it with the actual note path so you can find it quickly (e.g., `/Life_OS/Core_System/Logs/Weekly_Dashboard.md`).

---

## 0) Prerequisites

- Install **Obsidian**: https://obsidian.md/download
- Unzip your Life‑OS bundle into your vault as `Life_OS/` (or install via `setup_life_os.command`).

**Your Life‑OS paths** (key ones):

- `/Life_OS/Core_System/Logs/Weekly_Dashboard.md`
- `/Life_OS/Core_System/Logs/Daily.md`
- `/Life_OS/Core_System/Inputs/Curated_List.md`
- `/Life_OS/Core_System/Inputs/Adaptive_Suggestions.md`
- `/Life_OS/Core_System/Reflections/Journal_Template.md`
- `/Life_OS/Expansion/The_Architects_Odyssey/Lore.md`
- `/Life_OS/Expansion/The_Architects_Odyssey/XP_Log.md`
- `/Life_OS/The_Architects_Odyssey/Character_Sheet.md` _(if using the Lore view from the bundle)_
- `/Themes/The_Architects_Odyssey/plugins.md` _(theme plugin list)_

> 💡 Tip: You can keep Life‑OS as a separate **sub‑vault** by opening `Life_OS/` as its own vault in Obsidian (Vault Switcher → Open folder as vault).

---

## 1) Enable Core & Community Plugins

### 1.1 Core Plugins

1. Open **Settings → Core plugins**.
2. Turn on:
   - **Daily notes**
   - **Templates**
   - **Outline**
   - **Backlinks**
   - **Page preview**
3. (Optional) Enable **Calendar** if you have it installed.

### 1.2 Community Plugins (install safely)

1. Go to **Settings → Community Plugins → Turn off Safe Mode**.
2. Click **Browse** and install, then **Enable** each of the following:
   - **Dataview** — dashboard queries
   - **Templater** — automation for notes
   - **Tracker** — habit/XP graphs
   - **Periodic Notes** — auto-create weekly/monthly notes
   - **Hotkeys for templates** — hotkey (`cmd+shift+D`) - create daily logs
   - **Kanban** _(optional)_ — for Quests board
   - **Buttons** _(optional)_ — one-click actions
3. Verify that they appear under **Installed plugins** and are **Enabled**.

---

## 2) Templates Setup (Daily & Weekly)

### 2.1 Set your Template folder

- Open **Settings → Core plugins → Templates → Template folder location**.
- Set the folder path to: `/Life_OS/Core_System/` or `/Life_OS/Templates/` (if you moved templates there).

### 2.2 Daily Note Template

Open **`/Life_OS/Core_System/Daily_Template.md`** and customize if needed.

**Example:**

```markdown
# 🌅 Daily Log — <% tp.date.now("YYYY-MM-DD") %>

## 💭 Reflection

- What went right today?
- What challenged me?

## 🎯 Triad of Life

**Health:**
**Wealth:**
**Love:**
**Evolution:**

## ⚔️ XP Earned

- [ ] Deep Work (2 XP)
- [ ] Father–Son Lab (1 XP)
- [ ] Recovery (1 XP)

## 🧠 Affirmation

> “I do not chase; everything I want chases me.”
```

> 💡 If your bundle uses `Daily_Template.md`, keep that name. If you prefer `Templates/Daily_Template.md`, update the template folder setting accordingly.

### 2.3 Weekly Dashboard Template

Open **`/Life_OS/Core_System/Templates/Weekly_Dashboard_Template.md`** — this is your primary weekly document.
You can later configure it to auto-create each week using **Periodic Notes**.

---

## 3) Using Templater (exact steps)

> You’ll use **Templater** to spawn Daily notes from `Daily_Template.md`.

1. Ensure **Templater** is installed and enabled (see §1.2).
2. Go to **Settings → Templater**:
   - Set **Template folder location** → `/Life_OS/Core_System/` (or wherever your templates live).
   - (Optional) Enable **Trigger Templater on new file creation**.
3. To create a new Daily note:
   - Press **Ctrl/Cmd + P** → search **Templater: Create new note from template** → press **Enter**.
   - Select: `Daily_Template.md`.
   - Name the file something like: `2025-10-18 - Daily`.
4. The template will render (e.g., `<% tp.date.now() %>`). Fill it out as your daily journal.

**Set a Hotkey:**
Go to **Settings → Hotkeys → Templater: Create new note from template** → assign `Ctrl/Cmd + Shift + D`.

**Set a Hotkey: with Hotkeys for templates plug-in**
Go to **Settings → Hotkeys → Hotkeys for templates: New file in <...> from <...>** → assign `Ctrl/Cmd + Shift + D`.

> Repeat above for weekly dashboard and combine with Periodic Notes plug-in.

---

## 4) Daily Flow (What to Do Each Day)

1. **Open Today’s Daily Note:**
   `/Life_OS/Core_System/Daily_Notes/2025-10-18 - Daily.md`
   If missing, generate it with Templater.

2. **Fill out the sections:**

   - Reflection (2–3 short thoughts)
   - Triad of Life (Health, Wealth, Love, Evolution)
   - XP Checkboxes (mark completed)

3. **Log XP manually:**
   Add a row in `/Life_OS/Expansion/The_Architects_Odyssey/XP_Log.md`
   Example:
   `| 2025-10-18 | Deep Work | 2 | MCP refactor |`

---

## 5) Weekly Ritual (Sunday Reset)

1. Open `/Life_OS/Core_System/Logs/Weekly_Dashboard.md`.
2. Set **Theme** (intention for the week) and **Focus Arc**.
   Example: `Focus Arc: MCP Arc`.
3. Review last week’s tasks and migrate forward important ones.
4. Pull in 3–5 ideas from `/Life_OS/Core_System/Inputs/Adaptive_Suggestions.md` → move to `Curated_List.md`.
5. (Optional) Copy `/Templates/Weekly_Dashboard_Template.md` → rename for the new week or auto-create via **Periodic Notes**.

---

## 6) Dataview Dashboards (How to Run Them)

These blocks are already included inside:

- `/Life_OS/Core_System/Logs/Weekly_Dashboard.md`
- `/Life_OS/The_Architects_Odyssey/Character_Sheet.md`
- `/Life_OS/The_Architects_Odyssey/Quests/Main_Quests.md`
- `/Life_OS/The_Architects_Odyssey/Realms/*_Realm.md`

**To use Dataview:**

1. Enable **Dataview** in Plugins.
2. Open a note with a Dataview block like:

   ```dataview
   TABLE file.name AS Arc FROM "/Life_OS/The_Architects_Odyssey/Arcs"
   ```

3. Switch to **Reading View** (eye icon) to render it.

---

## 7) Tracker Basics (XP & Habits)

Start with `/Life_OS/Tracker_Config.md`.

**Example:**

````markdown
```tracker
searchType: table
searchTarget: "XP:"
startDate: 2025-10-18
endDate: 12w
summary:
  template: "Total XP: {{sum}}"
```
````

**Usage:**

- Add lines like `XP: 15` or tasks (`- [x] Journal`) in your Daily notes.
- Tracker automatically finds and visualizes them.

---

## 8) Periodic Notes (Auto-Create Notes)

1. Install and enable **Periodic Notes**.
2. Go to **Settings → Periodic Notes**:
   - **Daily** → Format `YYYY-MM-DD`, Template `/Life_OS/Core_System/Templates/Daily_Template.md`
   - **Weekly** → Format `gggg-[W]ww`, Template `/Life_OS/Core_System/Templates/Weekly_Dashboard_Template.md`
3. Use the **Command Palette** → “Periodic Notes: Open daily note” to generate.

---

## 9) Kanban Boards (Optional)

1. Create `/Life_OS/Expansion/The_Architects_Odyssey/Quests.md`.
2. Open the note → click **More options (⋮)** → **Convert to Kanban**.
3. Columns idea:
   - Main Quests
   - Side Quests
   - Daily Quests
4. Add cards like:
   - “Build MCP Worker routing system”
   - “Create Life‑OS DevConsole widget”
   - “Journal 5 nights this week”

---

## 10) Mode Toggle (Core ↔ Lore)

Add at the top of your dashboards:

```markdown
- Enter Story Mode → [[/Life_OS/The_Architects_Odyssey/Character_Sheet]]
- Return to Core → [[/Life_OS/Core_System/Templates/Weekly_Dashboard_Template]]
```

---

## 11) Father–Son Lab (Teaching Log)

Use `/Life_OS/Core_System/Love/Father_Son_Lab.md` to record experiments.

**Template:**

- What did we make?
- What did he find fun?
- What do we try next time?

Add XP to `/Life_OS/Expansion/The_Architects_Odyssey/XP_Log.md`.

---

## 12) Content Curation

1. Collect ideas in `/Life_OS/Core_System/Inputs/Adaptive_Suggestions.md`.
2. Promote favorites to `/Life_OS/Core_System/Inputs/Curated_List.md`.
3. Reference curated items in your **Weekly Dashboard → Focus of the Week**.

---

## 13) Troubleshooting

- **Dataview not rendering:** ensure plugin is enabled and you’re in Reading View.
- **Templater variables show raw:** run “Templater: Replace templates in active file.”
- **Tracker blank:** check for `XP:` entries or checked tasks.
- **Missing paths:** use the File Explorer sidebar and navigate manually.

---

## 14) Quick Routines (Cheat Sheet)

- **Morning (5 min):**
  Open `/Life_OS/Core_System/Logs/Weekly_Dashboard.md` → review goals → open Daily note.

- **Evening (5 min):**
  Fill Reflection → tick XP → append to `/Life_OS/Expansion/The_Architects_Odyssey/XP_Log.md`.

- **Sunday (20–30 min):**
  Review week → reset Focus Arc → curate 3–5 new ideas.

---

## 15) Customize Later

- `/Themes/The_Architects_Odyssey/plugins.md` — theme plugins.
- `/Life_OS/The_Architects_Odyssey/Arcs/*` — define mastery arcs (Frontend, MCP, Cloud, Robotics).
- `/Life_OS/Enhancement_Notes.md` — ideas for dashboards, visuals, automations.

---

### ✅ You’re Ready

Start with `/Life_OS/Core_System/Logs/Weekly_Dashboard.md` (Core Mode).
Switch to `/Life_OS/The_Architects_Odyssey/Character_Sheet.md` (Lore Mode) when you want narrative flow.

> Build your world, Architect. ✨
