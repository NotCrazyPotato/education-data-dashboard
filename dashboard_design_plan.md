# Dashboard Design Plan (Power BI)

## Business Case
District leaders need a single view of student outcomes, attendance, enrollment movement, and program effectiveness to allocate resources and intervene early. The dashboard should flag risk patterns, highlight achievement gaps, and connect spending to outcomes.

## Key KPIs
- Attendance Rate
- Chronic Absenteeism Rate
- Enrollment Change (YoY and MoM)
- Proficiency Rate (overall and by subject)
- Growth Index (current vs prior period)
- Graduation Rate (HS only)
- Intervention Success Rate
- Per-Student Spend
- Student-Teacher Ratio

## Page Structure

### 1. Executive Overview
Purpose: high-level health of the district.

Visuals:
- KPI cards: Attendance Rate, Proficiency Rate, Graduation Rate, Enrollment Change
- Line chart: Attendance Rate over time
- Clustered bar: Proficiency by subject
- Map or filled map: Performance by region/school
- Slicer: Year, term, school type

### 2. Attendance & Engagement
Purpose: identify attendance risk and patterns.

Visuals:
- Line chart: Daily/weekly attendance trend
- Heatmap: Attendance by day-of-week and month
- Bar: Chronic absenteeism by school
- Table: Top 10 schools with highest chronic absenteeism

### 3. Achievement & Growth
Purpose: track learning outcomes and growth.

Visuals:
- Line chart: Assessment scores over time by subject
- Stacked bar: Proficiency level distribution
- Scatter: Growth vs proficiency by school
- Decomposition tree: Drivers of low proficiency (grade, subject, program, subgroup)

### 4. Enrollment & Demographics
Purpose: monitor shifts and equity.

Visuals:
- Area chart: Enrollment trend over time
- Stacked bar: Enrollment by grade level and school type
- Treemap: Enrollment by demographic subgroup
- Waterfall: Enrollment changes (enrollments vs withdrawals)

### 5. Programs & Interventions
Purpose: evaluate program impact and intervention ROI.

Visuals:
- Bar: Intervention success rate by type
- Line: Attendance change pre/post intervention
- Matrix: Program participation vs proficiency

### 6. Finance & Resource Allocation
Purpose: connect spending to outcomes.

Visuals:
- KPI cards: Per-student spend, staffing spend
- Column chart: Spend by category
- Scatter: Spend per student vs proficiency by school
- Table: Schools with high spend and low outcomes

## Visual Conventions
- Use consistent colors for performance bands (red, amber, green).
- Tooltips to show subgroup detail and YoY deltas.
- Drill-through from school to student-level detail.

## Suggested Measures (DAX)
- Attendance Rate = DIVIDE([Present Days], [Total School Days])
- Chronic Absenteeism Rate = DIVIDE([Chronic Absent Students], [Total Students])
- Proficiency Rate = DIVIDE([Proficient Count], [Tested Count])
- Growth Index = AVERAGEX(Students, [Current Score] - [Prior Score])
- Per-Student Spend = DIVIDE([Total Spend], [Total Students])
