# Per-Machine Setup Checklist — Project Professional 2021

Follow this once on your own machine after Project 2021 is installed and activated. Takes about 10 minutes. Tick each box.

## A. Point Project at the shared template

- [ ] **File → Options → Save**: set **Default personal templates location** to the shared template folder (e.g. `\\WCM-SERVER\Projects\Templates\`).
- [ ] Confirm it worked: **File → New → Personal** — you should see **WCM-Construction**.
- [ ] From now on, start every new schedule from **File → New → Personal → WCM-Construction**. Never from Blank Project.

## B. Save behavior

- [ ] **File → Options → Save**: set **Save files in this format** to *Project (*.mpp)*.
- [ ] Turn on **Auto save every 10 minutes**, and choose **Prompt before saving** (so a bad experiment doesn't overwrite good work).

## C. Defaults that live per-machine

These are user-level options the template cannot carry, so set them here:

- [ ] **File → Options → Schedule**: under *Scheduling options*, choose **All New Projects** in the dropdown and set **New tasks created: Auto Scheduled**.
- [ ] Same screen: **Default task type: Fixed Duration**, untick **New tasks are effort driven**.
- [ ] **File → Options → Advanced**: tick **Show project summary task** for All New Projects.
- [ ] **File → Options → Display**: currency symbol and 0 decimals to match office standard.

## D. Sanity check (2 minutes)

- [ ] New project from the WCM template.
- [ ] Add a task, give it 3 days — it should land on working days only, 8:30 AM start, and show as Auto Scheduled in the status bar.
- [ ] Add a second task, link it FS to the first (select both → Task tab → chain icon). Dragging task 1 should move task 2.
- [ ] Check row 0 (project summary task) is visible.
- [ ] Delete the test file.

## E. Know the house rules

- [ ] Read [scheduling-standards.md](scheduling-standards.md) — links not typed dates, deadlines not constraints, baseline before work starts.

If any step doesn't match what you see on screen, tell the template owner before working around it — a per-machine workaround is how schedules drift apart.
