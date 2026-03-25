# Dataset Structure (Education Analytics)

This dataset is designed for a Power BI star schema. Fact tables capture events (attendance, assessments, enrollment, finance), while dimension tables describe entities (students, schools, programs, time).

## Dimensions

### dim_date
- date_id (PK, int, yyyymmdd)
- date (date)
- day_of_week (text)
- week_of_year (int)
- month (int)
- month_name (text)
- quarter (int)
- year (int)
- is_school_day (bool)
- term (text)

### dim_school
- school_id (PK)
- school_name
- district
- region
- school_type (elementary, middle, high)
- grade_span (e.g., K-5)
- capacity
- opened_date

### dim_student
- student_id (PK)
- student_name
- gender
- birth_date
- ethnicity
- socioeconomic_status
- special_education_flag
- english_learner_flag
- enrollment_status (active, transferred, graduated)
- entry_date
- exit_date

### dim_teacher
- teacher_id (PK)
- teacher_name
- hire_date
- tenure_years
- subject_area
- certification_level

### dim_program
- program_id (PK)
- program_name (STEM, Arts, CTE)
- program_type (core, elective, support)
- funding_source

### dim_course
- course_id (PK)
- course_name
- subject_area
- grade_level
- credits

## Facts

### fact_attendance
- attendance_id (PK)
- date_id (FK)
- school_id (FK)
- student_id (FK)
- attendance_status (present, absent, tardy)
- absence_reason

### fact_assessment
- assessment_id (PK)
- date_id (FK)
- school_id (FK)
- student_id (FK)
- course_id (FK)
- assessment_type (benchmark, state, classroom)
- score
- proficiency_level
- max_score

### fact_enrollment
- enrollment_id (PK)
- date_id (FK)
- school_id (FK)
- student_id (FK)
- program_id (FK)
- grade_level
- enrollment_event (enrolled, withdrew)

### fact_intervention
- intervention_id (PK)
- date_id (FK)
- school_id (FK)
- student_id (FK)
- intervention_type
- duration_hours
- outcome (improved, no_change, declined)

### fact_finance
- finance_id (PK)
- date_id (FK)
- school_id (FK)
- program_id (FK)
- expense_category (staffing, materials, facilities)
- amount

## Relationships
- All fact tables join to dim_date and dim_school.
- Student-level facts join to dim_student.
- Assessments join to dim_course.
- Enrollment and finance join to dim_program.

## Notes
- This schema supports drill-down from district -> school -> student.
- Use surrogate keys for performance and consistency.
- Create a Date table in Power BI and mark it as a Date table.
