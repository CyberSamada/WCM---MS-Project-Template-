# WCM — Microsoft Project Template

Team standards for Microsoft Project Professional 2021 (standalone, no Project Server/Online) at the WCM construction office.

Because standalone Project has no central server, **consistency comes from a shared template**: one person builds a `.mpt` file with all the settings below baked in, saves it to the shared drive, and everyone starts new schedules from it.

## What's in this repo

| File | Purpose |
|---|---|
| [WCM-Construction.xml](WCM-Construction.xml) | **The template itself**, in Project's XML interchange format — open in Project 2021, Save As `.mpt`. Carries the WCM calendar (Mon–Fri 8:30–5:00, Ontario holidays 2026–27), schedule options, phase + MasterFormat WBS, milestones, custom fields, and resource sheet. |
| [docs/template-build-guide.md](docs/template-build-guide.md) | What's inside the template and why, plus the few settings the XML can't carry. Reference for the template owner. |
| [docs/machine-setup-checklist.md](docs/machine-setup-checklist.md) | One-page checklist each team member follows on their own machine after installing Project 2021. |
| [docs/scheduling-standards.md](docs/scheduling-standards.md) | Team rules for building and updating schedules — links not dates, deadlines not constraints, baselines, status dates. |

## Quick start

1. **Template owner — turn the XML into the .mpt (~10 min):**
   1. In Project 2021: **File → Open**, pick `WCM-Construction.xml`, import **As a new project**.
   2. Spot-check against `docs/template-build-guide.md` and do its two manual sections (display options and the saved Gantt view).
   3. **File → Save As**, type **Project Template (*.mpt)**, name it `WCM-Construction.mpt`, put it on the shared drive.
2. **Everyone else:** follow `docs/machine-setup-checklist.md` on your machine (10 minutes).
3. **All schedulers:** read and follow `docs/scheduling-standards.md` — it's what keeps the critical path honest.

## Where the template lives

Save the finished template to the shared drive (e.g. `\\WCM-SERVER\Projects\Templates\WCM-Construction.mpt`) and treat it as read-only. To change a team-wide setting, update the template and announce it — don't let per-machine copies drift.
