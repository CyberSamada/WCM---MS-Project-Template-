# WCM Scheduling Standards

House rules for building and updating schedules. The template handles the settings; these habits keep the schedule honest. Everything here exists to protect two things: **a live critical path** and **a defensible baseline**.

## Building the schedule

1. **Drive everything with links, never typed-in dates.** Typing a start or finish date creates a hidden constraint and kills the critical path logic. If a task can't start until another finishes, link it (FS). If trades can overlap, use SS with a lag (e.g. `SS+3 days`).
2. **Use lags for cure and lead times.** Concrete cure is `FS+7 days` after the pour — not a fake 7-day task, and not a padded duration.
3. **Deadlines, not constraints, for contract dates.** Put a **Deadline** (Task Information → Advanced) on milestones like Substantial Completion. You get a red warning marker when the schedule slips past it, without freezing the logic. `Must Finish On` constraints are banned except where a genuinely fixed external event exists (e.g. a road closure permit window).
4. **Every task gets a predecessor and a successor** (except the start milestone and final handover). Open-ended tasks are where float goes to hide. Check with the Task Inspector before issuing a schedule.
5. **Milestones are zero-duration** and named as events: "Permit Issued", not "Permits".
6. **Fill in Location/Area and Subcontractor** custom fields on every task — coordination meetings are run grouped by these.
7. **Weather-sensitive tasks** (earthwork, roofing, paving, exterior concrete) get the *Weather-sensitive* calendar via Task Information → Advanced → Calendar.

## Baseline

- **Set the baseline the day the schedule is approved, before work starts:** Project tab → Set Baseline → Baseline (the unnumbered one).
- Never overwrite the original baseline. If scope changes materially, save the new plan into **Baseline 1, 2, …** and record the date and reason below the schedule title.
- The baseline is the evidence for delay claims and extension-of-time requests. Treat it as a contract document.

## Updating (every progress cycle)

1. **Set the Status Date** (Project tab → Status Date) to the data date — typically the cutoff for the weekly/biweekly update.
2. Progress every in-flight task against it: Actual Start, % Complete or Actual/Remaining Duration.
3. Anything that should have happened before the status date but didn't gets **rescheduled forward** (Project tab → Update Project → Reschedule uncompleted work to start after the status date). No work floating in the past.
4. Review the **Tracking Gantt** — baseline bars vs current bars — and the **Total Slack** column. Negative slack means a deadline or constraint is being missed.
5. Save the update as a new dated file (`ProjectName-2026-08-13.mpp`); keep the working master separate.

## Issuing

- Issue PDFs of the **WCM Gantt** view (grouped by Subcontractor for coordination meetings, by Location/Area for site walks).
- Filter: critical tasks + next 4 weeks ("look-ahead") for weekly site meetings; full schedule monthly.
- Never issue a schedule with unresolved constraint warnings or estimated (`?`) durations on near-term work.

## Red flags in review

Any of these in a schedule review means stop and fix:

- Tasks with a **constraint icon** in the Indicators column that nobody can explain.
- **Manually Scheduled** tasks (pushpin icon).
- Tasks with **no predecessor or no successor**.
- A critical path that runs through admin tasks, or no visible critical path at all.
- Actual dates in the future, or planned work in the past relative to the status date.
