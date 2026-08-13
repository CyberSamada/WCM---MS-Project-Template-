# WCM — Microsoft Project Template

Team standards for Microsoft Project Professional 2021 (standalone, no Project Server/Online) at the WCM construction office.

Because standalone Project has no central server, **consistency comes from a shared template**: one person builds a `.mpt` file with all the settings below baked in, saves it to the shared drive, and everyone starts new schedules from it.

## What's in this repo

| File | Purpose |
|---|---|
| [docs/template-build-guide.md](docs/template-build-guide.md) | Step-by-step guide for building the shared `.mpt` template — calendars, schedule options, views, custom fields. Do this once. |
| [docs/machine-setup-checklist.md](docs/machine-setup-checklist.md) | One-page checklist each team member follows on their own machine after installing Project 2021. |
| [docs/scheduling-standards.md](docs/scheduling-standards.md) | Team rules for building and updating schedules — links not dates, deadlines not constraints, baselines, status dates. |

## Quick start

1. **Template owner:** work through `docs/template-build-guide.md` and save the result as `WCM-Construction.mpt` on the shared drive.
2. **Everyone else:** follow `docs/machine-setup-checklist.md` on your machine (10 minutes).
3. **All schedulers:** read and follow `docs/scheduling-standards.md` — it's what keeps the critical path honest.

## Where the template lives

Save the finished template to the shared drive (e.g. `\\WCM-SERVER\Projects\Templates\WCM-Construction.mpt`) and treat it as read-only. To change a team-wide setting, update the template and announce it — don't let per-machine copies drift.
