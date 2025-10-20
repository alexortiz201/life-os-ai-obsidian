Weekly_Dashboard_Template
<% await tp.file.rename(tp.date.now("YYYY-MM") + "-(" + tp.date.now("DD") + "-" + tp.date.now("DD", +7)+") Dashboard")%>

# Weekly Dashboard
<% tp.date.now("YYYY-MM-DD") + " to " + tp.date.now("YYYY-MM-DD", +7)%>

> 🔒 [Private Context Available](/Life_OS/_Private/Personal_Context.md)
> 🔒 [Private Context Logs Available](/Life_OS/_Private/Logs)
> *(For AI and local insights only)*


### Mode Toggle
- [Enter Story Mode →](../The_Architects_Odyssey/Character_Sheet.md)

## Focus & Affirmation
- Focus Domain: (set weekly)
- Affirmation: I do not chase; everything I want chases me.

## Core Processes (Persistent)
- [ ] Morning System Check
- [ ] Deep Work Block
- [ ] Movement Block (Dog walk / Gym / Soccer)
- [ ] Father–Son Lab
- [ ] Journaling + Reflection

## Ephemeral Processes (Temporary)
- [ ] Interview Prep Loop
- [ ] MCP Build Loop
- [ ] Leetcode Sprint

## Adaptive Inputs
See Core_System/Inputs/Curated_List.md and Adaptive_Suggestions.md


---
## Dataview — Active Arcs (Lore)
```dataview
TABLE file.name AS Arc, choice(contains(file.path, "Life_OS/The_Architects_Odyssey/Arcs"), "Lore Arc", "") AS Type
FROM "The_Architects_Odyssey/Arcs"
SORT file.name ASC
```
## Dataview — Quests (Main/Side/Daily)
```dataview
LIST FROM "Life_OS/The_Architects_Odyssey/Quests"
SORT file.ctime DESC
```
