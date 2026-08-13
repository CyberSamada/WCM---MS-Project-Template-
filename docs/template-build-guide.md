# Building the WCM Construction Template (.mpt)

Do this **once**, in a blank project file, then save as a template for the whole team. Every setting here exists so schedules calculate correctly and look the same in every meeting.

**Who:** one template owner (whoever maintains scheduling standards).
**Time:** about an hour, most of it entering holidays and custom fields.
**Result:** `WCM-Construction.mpt` on the shared drive.

---

## 1. Calendars — do this first

**Project tab → Change Working Time.**

### Standard calendar (site hours)

Edit the built-in **Standard** calendar to the real site day:

- Working times: **7:00 AM – 12:00 PM, 12:30 PM – 3:30 PM** (8-hour day with a half-hour break) — adjust to your actual shift.
- Working days: **Monday–Friday** (add Saturday if crews regularly work six days).
- Add all statutory holidays for the next 18 months as **Exceptions**, named clearly ("Eid al-Fitr 2027", not "Holiday 3"). Extend the list each year.

### Weather-sensitive calendar

Create a second calendar (**Create New Calendar → make a copy of Standard**) named **Weather-sensitive**:

- Block out expected weather down-days for exterior work in the relevant seasons.
- Assign it *per task* (Task Information → Advanced → Calendar) to earthwork, roofing, paving, exterior concrete — not to the whole project.

### Office calendar (optional)

If office staff hours differ from site hours (e.g. 8:00–5:00), copy Standard into an **Office** calendar for admin/procurement tasks.

## 2. Calendar options — must match the calendar exactly

**File → Options → Schedule → "Calendar options for this project".**

These numbers are how Project converts "3 days" into hours. If they don't match the working times above, dates drift.

| Option | Value |
|---|---|
| Week starts on | Monday (or your local convention) |
| Default start time | 7:00 AM |
| Default end time | 3:30 PM |
| Hours per day | 8 |
| Hours per week | 40 (48 if six-day weeks) |
| Days per month | 20 |

Apply to **All New Projects** so it's baked into the template.

## 3. Scheduling options

**File → Options → Schedule → "Scheduling options for this project".**

| Option | Value | Why |
|---|---|---|
| New tasks created | **Auto Scheduled** | Manually scheduled tasks silently stop calculating. |
| Duration is entered in | **Days** | Construction talks in days. |
| Work is entered in | **Hours** | For the few times you cost-load. |
| Default task type | **Fixed Duration** | A pour takes 3 days whether you assign 4 laborers or 6. |
| New tasks are effort driven | **Off** | Stops Project shortening durations when you add crew. |
| Tasks will always honor their constraint dates | **Off** | Links win over constraints; you see conflicts instead of hiding them. |
| Show that scheduled tasks have estimated durations | On | The `?` flags durations nobody has confirmed yet. |
| Autolink inserted or moved tasks | **Off** | Prevents accidental links when reordering the WBS. |

## 4. Display and advanced options

- **File → Options → Advanced:** tick **Show project summary task** — row 0 gives overall dates, duration, and cost.
- **File → Options → Display:** show currency with 0 decimals, set your currency symbol.
- **Format tab (Gantt Chart Tools):** tick **Critical Tasks** and **Slack** so the critical path is red in every view.

## 5. Custom fields

**Project tab → Custom Fields.** Rename these text fields (they carry into every schedule made from the template):

| Field | Rename to | Use |
|---|---|---|
| Text1 | **Location/Area** | Level 2, Zone B, Building A… |
| Text2 | **Subcontractor** | Which sub owns the task |
| Text3 | **CSI Division** (optional) | If you code by division |

Then create two **Group By** definitions (View tab → Group by → New Group By):

- **By Subcontractor** — how you run coordination meetings.
- **By Location/Area** — how you read stacking of trades.

## 6. Standard views and tables

Set up the Gantt Chart view the way meetings will see it:

1. Columns, left to right: **ID, Outline Number, Task Name, Duration, Start, Finish, Predecessors, Total Slack, Location/Area, Subcontractor**.
2. **Format → Outline Number** on, **Project Summary Task** on.
3. Save the view (View → Save View…) as **WCM Gantt** so it travels with the template.
4. Keep **Tracking Gantt** untouched — it's the baseline-vs-actual view used once work starts.

## 7. WBS starter (optional but recommended)

Seed the template with a top-level phase skeleton the team can prune per project:

```text
1  Preconstruction & Permits
2  Mobilization & Site Establishment
3  Sitework & Earthworks
4  Foundations & Substructure
5  Superstructure
6  Envelope & Roofing
7  MEP Rough-ins
8  Interior Finishes
9  External Works & Landscaping
10 Testing, Commissioning & Handover
11 Milestones
```

Under **Milestones**, add zero-duration placeholders: Notice to Proceed, Permit Issued, Structure Topped Out, Weathertight, Substantial Completion, Handover. Put **Deadlines** on these per project — never Must-Finish-On constraints.

## 8. Resource Sheet starter

Enter **crews and subcontractors, not individuals**, plus key equipment:

| Resource Name | Type | Max Units |
|---|---|---|
| Earthworks crew | Work | 100% |
| Formwork crew | Work | 200% (two crews) |
| Concrete crew | Work | 100% |
| Steel erection crew | Work | 100% |
| Framing crew | Work | 100% |
| Electrical sub | Work | 100% |
| Mechanical/Plumbing sub | Work | 100% |
| Finishes sub | Work | 100% |
| Crane | Work | 100% |
| Excavator | Work | 200% |

Assign resources mainly to spot **overallocation and stacking of trades**. Only enter rates and cost-load if the office genuinely intends to maintain costs in Project.

## 9. Save as template

1. **File → Save As → Browse**, file type **Project Template (*.mpt)**.
2. Name it `WCM-Construction.mpt`.
3. When prompted what data to strip, remove baseline data and actuals (keep custom fields and calendars).
4. Copy it to the shared drive template folder and mark it read-only.
5. Keep one dated backup copy whenever you revise it (`WCM-Construction-2026-08.mpt`).
