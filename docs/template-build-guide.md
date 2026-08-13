# Building the WCM Construction Template (.mpt)

> **Shortcut — most of this is already done.** The repo contains [`WCM-Construction.xml`](../WCM-Construction.xml) with sections 1–3, 5, 7 and 8 pre-built (calendars with Ontario holidays, schedule options, custom fields, WBS, resources). Open it in Project (File → Open, choose the XML, import **As a new project**), verify against this guide, do the two manual sections (4: display options, 6: views), then jump to section 9 to save it as the `.mpt`. Total time: ~10 minutes.

Do this **once**, then save as a template for the whole team. Every setting here exists so schedules calculate correctly and look the same in every meeting.

**Who:** one template owner (whoever maintains scheduling standards).
**Result:** `WCM-Construction.mpt` on the shared drive.

---

## 1. Calendars — do this first

**Project tab → Change Working Time.**

### Standard calendar (site hours)

Edit the built-in **Standard** calendar to the real site day:

- Working times: **8:30 AM – 12:00 PM, 12:30 PM – 5:00 PM** (WCM hours — 8-hour day with a half-hour lunch).
- Working days: **Monday–Friday**.
- Ontario statutory/observed holidays for 2026–2027 are already entered as **Exceptions** in the XML. Extend the list each year, named clearly ("Family Day 2028", not "Holiday 3").

### Weather-sensitive calendar

Create a second calendar (**Create New Calendar → make a copy of Standard**) named **Weather-sensitive**:

- Block out expected weather down-days for exterior work in the relevant seasons.
- Assign it *per task* (Task Information → Advanced → Calendar) to earthwork, roofing, paving, exterior concrete — not to the whole project.

### Site calendar (optional)

If site crew hours ever differ from office hours (e.g. an early 7:00 start on site), copy Standard into a **Site** calendar and assign it to field tasks.

## 2. Calendar options — must match the calendar exactly

**File → Options → Schedule → "Calendar options for this project".**

These numbers are how Project converts "3 days" into hours. If they don't match the working times above, dates drift.

| Option | Value |
|---|---|
| Week starts on | Monday |
| Default start time | 8:30 AM |
| Default end time | 5:00 PM |
| Hours per day | 8 |
| Hours per week | 40 |
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
| Text3 | **MasterFormat Div** | Division code (e.g. `03 30 00`) for grouping/reporting by spec section |

Then create two **Group By** definitions (View tab → Group by → New Group By):

- **By Subcontractor** — how you run coordination meetings.
- **By Location/Area** — how you read stacking of trades.

## 6. Standard views and tables

Set up the Gantt Chart view the way meetings will see it:

1. Columns, left to right: **ID, Outline Number, Task Name, Duration, Start, Finish, Predecessors, Total Slack, Location/Area, Subcontractor**.
2. **Format → Outline Number** on, **Project Summary Task** on.
3. Save the view (View → Save View…) as **WCM Gantt** so it travels with the template.
4. Keep **Tracking Gantt** untouched — it's the baseline-vs-actual view used once work starts.

## 7. WBS starter

WCM standard: **phases at level 1, MasterFormat-coded work items at level 2.** The phase gives the timeline logic everyone reads in meetings; the division number on each task ties it to the spec book and buyout.

```text
1  Preconstruction & Permits
   00 52 00 - Subcontractor Buyout & Agreements
   01 33 00 - Submittals & Shop Drawings
   01 41 00 - Permits & Regulatory Approvals
2  Mobilization & Site Establishment
3  Sitework & Earthworks          (02 41 00, 31 10 00, 31 23 00, 33 10 00)
4  Foundations & Substructure     (03 30 00, 07 11 00, 33 46 00)
5  Superstructure                 (03 30 00, 05 10 00, 05 30 00, 06 10 00)
6  Envelope & Roofing             (04 20 00, 07 20 00, 07 40 00, 07 50 00, 08 10 00, 08 50 00)
7  MEP Rough-ins                  (21, 22, 23, 26, 27)
8  Interior Finishes              (06 40 00, 09 xx 00, 10 00 00, 22 40 00, 26 50 00)
9  External Works & Landscaping   (32 10 00, 32 30 00, 32 90 00)
10 Testing, Commissioning & Handover (01 45 00, 01 78 00, 01 91 00)
11 Milestones
```

The full skeleton is pre-built in `WCM-Construction.xml`. Per project: prune divisions that don't apply, split items by building/zone as needed, keep the `NN NN NN - Name` naming convention.

**Milestones** (zero-duration, pre-built): Notice to Proceed, Building Permit Issued, Foundations Complete, Structure Topped Out, Building Weathertight, Substantial Performance, Total Completion / Handover. Put **Deadlines** on these per project — never Must-Finish-On constraints. ("Substantial Performance" is the Ontario Construction Act term — it drives holdback release, so treat that milestone with care.)

## 8. Resource Sheet starter

Pre-built in the XML: **crews and subcontractors, not individuals**, plus key equipment (Earthworks/Formwork/Concrete/Steel/Framing/Masonry crews, Roofing/Electrical/Mechanical/Fire protection/Drywall subs, Crane, Excavator). Formwork crew and Excavator are set to 200% (two units).

Assign resources to spot **overallocation and stacking of trades**. The template is deliberately **schedule-only — no cost rates**: WCM has no costing system feeding it, and half-maintained cost data is worse than none. If the office later commits to maintaining costs in Project, add Standard Rates to the resource sheet then.

## 9. Save as template

1. **File → Save As → Browse**, file type **Project Template (*.mpt)**.
2. Name it `WCM-Construction.mpt`.
3. When prompted what data to strip, remove baseline data and actuals (keep custom fields and calendars).
4. Copy it to the shared drive template folder and mark it read-only.
5. Keep one dated backup copy whenever you revise it (`WCM-Construction-2026-08.mpt`).
