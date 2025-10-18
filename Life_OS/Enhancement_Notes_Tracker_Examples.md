# Tracker Examples (XP and Habits)

> Requires the **Tracker** plugin. Copy these blocks into any note.

## Daily XP (manual)
```tracker
searchType: table
searchTarget: "XP:"
startDate: 2025-10-18
endDate: 12w
summary:
  template: "Total XP: {sum}"
```

Record XP inline in daily notes like:
`XP: 15` (Deep Work)  
`XP: 25` (Shadow Encounter)

## Habit Streak (Journaling)
```tracker
searchType: taskdone
searchTarget: "- [x] Journal"
startDate: 2025-10-18
endDate: 12w
```

## Soccer Sessions per Week
```tracker
searchType: taskdone
searchTarget: "- [x] Soccer"
startDate: 2025-10-18
endDate: 12w
```

Tip: add checkboxes like `- [x] Journal` or `- [x] Soccer` in your Daily Notes for automatic counting.
