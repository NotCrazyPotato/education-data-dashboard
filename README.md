# Power BI Education Dashboard

This project defines a Power BI dashboard for district-level education analytics. It includes the business case, KPIs, dashboard design, and a dataset structure summary to guide implementation in Power BI.

## Project Structure
```
powerbi-sales-dashboard/
│
├── README.md
├── data/
│   ├── raw/
│   └── processed/
│
├── pbix/
│   └── sales_dashboard.pbix
│
├── docs/
│   ├── dashboard_design.md
│   ├── kpis.md
│   └── business_case.md
│
├── images/
│   ├── dashboard_overview.png
│   └── charts_examples.png
│
├── queries/
│   └── data_cleaning.sql
│
└── .gitignore
```

## Dataset Structure (Summary)
Dimensions: `dim_date`, `dim_school`, `dim_student`, `dim_teacher`, `dim_program`, `dim_course`.

Facts: `fact_attendance`, `fact_assessment`, `fact_enrollment`, `fact_intervention`, `fact_finance`.

All fact tables join to `dim_date` and `dim_school`. Student-level facts join to `dim_student`. Assessments join to `dim_course`. Enrollment and finance join to `dim_program`.

## Documentation
- Business case: `docs/business_case.md`
- KPIs: `docs/kpis.md`
- Dashboard design + insights: `docs/dashboard_design.md`
- Full dataset structure: `docs/dataset_structure.md`

## Notes
- `pbix/sales_dashboard.pbix` is a placeholder for the Power BI file.
- `images/` contains placeholder visuals for the dashboard mockups.
