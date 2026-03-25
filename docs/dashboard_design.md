# Dashboard Design

## Page Structure

### 1. Executive Overview
- KPI cards: Attendance Rate, Proficiency Rate, Graduation Rate, Enrollment Change
- Line chart: Attendance Rate over time
- Clustered bar: Proficiency by subject
- Map or filled map: Performance by region/school
- Slicer: Year, term, school type

### 2. Attendance & Engagement
- Line chart: Daily/weekly attendance trend
- Heatmap: Attendance by day-of-week and month
- Bar: Chronic absenteeism by school
- Table: Top 10 schools with highest chronic absenteeism

### 3. Achievement & Growth
- Line chart: Assessment scores over time by subject
- Stacked bar: Proficiency level distribution
- Scatter: Growth vs proficiency by school
- Decomposition tree: Drivers of low proficiency (grade, subject, program, subgroup)

### 4. Enrollment & Demographics
- Area chart: Enrollment trend over time
- Stacked bar: Enrollment by grade level and school type
- Treemap: Enrollment by demographic subgroup
- Waterfall: Enrollment changes (enrollments vs withdrawals)

### 5. Programs & Interventions
- Bar: Intervention success rate by type
- Line: Attendance change pre/post intervention
- Matrix: Program participation vs proficiency

### 6. Finance & Resource Allocation
- KPI cards: Per-student spend, staffing spend
- Column chart: Spend by category
- Scatter: Spend per student vs proficiency by school
- Table: Schools with high spend and low outcomes

## Visual Conventions
- Consistent colors for performance bands (red, amber, green).
- Tooltips with subgroup detail and YoY deltas.
- Drill-through from school to student-level detail.

## Dataset Structure (Summary)

### Dimensions
- dim_date: date attributes, term, school-day flag
- dim_school: school profile, region, capacity
- dim_student: demographics and enrollment status
- dim_teacher: staffing profile
- dim_program: program metadata and funding source
- dim_course: course and subject descriptors

### Facts
- fact_attendance: presence/absence by student and date
- fact_assessment: scores and proficiency by subject
- fact_enrollment: enrollment and withdrawals
- fact_intervention: intervention types and outcomes
- fact_finance: spending by category and program

## Insights Provided
- Early-warning signals for attendance risk by school and subgroup.
- Identification of achievement gaps across grade levels and programs.
- Evidence of which interventions correlate with improved attendance or proficiency.
- Visibility into enrollment shifts that affect staffing and budgets.
- Direct comparison of spending per student against performance metrics.
