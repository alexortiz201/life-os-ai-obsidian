# 🧬 LIFE‑OS “DNA” — v3 System Map

**System Type:** Guided, adaptive operating rhythm (Core + Lore + Private)  
**Primary Tools:** Obsidian + Templater + Dataview • MCP Server (Cloudflare Worker)

---

## 1) Layer Overview (Purpose → Location → Relationship)

| Layer | Purpose | Examples / Notes | File Root |
|:--|:--|:--|:--|
| 🧠 **Core_System** | Active workflows you use daily | Weekly Dashboard, Wealth tracks, Inputs | `/Life_OS/Core_System/` |
| 🗂️ **Templates** | Blueprints (no live data) | Daily/Weekly/Arc templates, commands | `/Life_OS/Templates/` |
| 🔒 **_Private** | Local-only logs and sensitive notes | `/Logs/Daily`, `/Logs/Weekly`, `Personal_Context.md` | `/Life_OS/_Private/` |
| 🧩 **Expansion** | Extensions & intelligence | Adaptive_Intelligence_Layer, XP systems, Lore | `/Life_OS/Expansion/` |
| 🎭 **Themes** | Visual + narrative skins | The_Architects_Odyssey (palette, icons, CSS) | `/Life_OS/Themes/` |
| 🌐 **MCP Server** | External automation & APIs | Suggestions, summaries, Oracle mode | `https://purpledreams.io/mcp` |

---

## 2) Smart Weekly Operating Rhythm (WOR)

**Goal:** Each Sunday, auto‑create a customized, time‑blocked weekly plan using your reflections + active arcs.

**How it works**
1. Periodic Notes creates a new Weekly file from `Templates/Weekly_Dashboard_Template.md`.
2. The template calls the Templater user script **`tp.user.generate_schedule()`**.
3. The script reads last week’s logs in `/_Private/Logs/` + your current Arc files in `/Core_System/Wealth/`.
4. It returns a Markdown **schedule** with time blocks (Morning, Deep Work, Movement, Lab, Reflection) and **swappable modules**.  

**Files**  
- `/Life_OS/Templates/Weekly_Dashboard_Template.md` → includes `<%* tR = await tp.user.generate_schedule() %>`  
- `/Life_OS/Core_System/Scripts/generate_schedule.js` *(place the JS here; see script below)*  
- Output lives in: `/Life_OS/_Private/Logs/Weekly/YYYY‑MM‑DD Dashboard.md`

---

## 3) Adaptive Intelligence Layer (AIL)

**Goal:** Turn reflections + arc focus into **fresh weekly suggestions**.

**Flow**
- Read last 7–14 days from `/_Private/Logs/` (Daily + Weekly).
- Look at active arc tags (e.g., `#arc/MCP`, `#arc/Front_End_Systems`) in `/Core_System/Wealth/*`.
- Generate suggestions → write them to:
  - `/Life_OS/Core_System/Inputs/Adaptive_Suggestions.md` (full queue)
  - `/Life_OS/Core_System/Inputs/Curated_List.md` (this week’s 3–5 picks)

**MCP Option**
- Endpoint `POST /suggestions/update` populates the two notes above via your Worker, gated by Auth in v1.

---

## 4) Tagging Schema (Frontmatter)

Add this to the **top of every note** (tune tags as needed):

```yaml
---
tags: [layer/Core_System, domain/Wealth, type/Arc, status/Active]
related_arcs: [MCP, Front_End_Systems]
---
```

**Examples**
- `/Core_System/Wealth/MCP.md` → `tags: [domain/Wealth, type/Arc, status/Active]`
- `/_Private/Logs/Daily/*` → `tags: [type/Log, scope/Private]`
- `/Expansion/Adaptive_Intelligence_Layer.md` → `tags: [layer/Expansion, ai/Adaptive]`

---

## 5) Re‑organize Templates (single source of truth)

```
/Life_OS/Templates/
  Core/
    Daily_Template.md
    Weekly_Dashboard_Template.md
    Journal_Template.md
  Arcs/
    Arc_Template.md
    Mastery_Template.md
  System/
    Templater_Commands.md
    Dataview_Queries.md
```

**Live implementations only** remain under `/Core_System/`.  
**Generated notes** go under `/_Private/Logs/` → `Daily`, `Weekly`, `Monthly`.

---

## 6) Weekly Dashboard Add‑Ons (Guidance)

In `Weekly_Dashboard_Template.md` near the top:

```markdown
## 🧭 Weekly AI Guidance
<%* tR = await tp.user.generate_schedule({ guidanceOnly: true }) %>

## 💡 Adaptive Suggestions (Top 3)
```dataview
LIST
FROM "/Life_OS/Core_System/Inputs/Curated_List"
LIMIT 3
```
```

---

## 7) Minimal Dataview Blocks

**Recent XP**
```dataview
TABLE kind AS "Arc", points, note
FROM "/Life_OS/Expansion/The_Architects_Odyssey/XP_Log"
SORT file.mtime DESC
LIMIT 5
```

**Active Arcs**
```dataview
TABLE file.name AS Arc
FROM "/Life_OS/Core_System/Wealth"
WHERE contains(tags, "status/Active")
```

---

## 8) System Index (AI Context Map)

Add to `/Life_OS/Core_System/System_Index.md`:

```markdown
## 🤖 AI Context Map

**Accessible:**
- /Life_OS/Core_System/Reflections.md (summaries only)
- /Life_OS/Core_System/Weekly_Dashboard.md
- /Life_OS/Core_System/Inputs/Curated_List.md

**Local‑Only:**
- /Life_OS/_Private/Logs/*
- /Life_OS/_Private/Personal_Context.md

> AIs should prefer summaries; never directly parse `_Private` without explicit permission.
```

---

## 9) Next Actions

1) Move all templates → `/Life_OS/Templates/**`  
2) Add frontmatter tags to all notes (use the schema above)  
3) Drop `generate_schedule.js` into your Templater user scripts folder (`Core_System/Scripts` or Templater’s configured script dir)  
4) Insert `<%* tR = await tp.user.generate_schedule() %>` into your **Weekly template**  
5) (Optional) Wire MCP endpoint `/suggestions/update` to refresh Inputs files weekly

---

**End — LIFE_OS_DNA_v3.md**