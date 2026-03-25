-- Sample data for the education dashboard (for demo and testing)
-- This file can be run in a SQL database to seed example records.
-- Adjust types as needed for your platform (PostgreSQL, SQL Server, etc).

BEGIN;

-- Dimensions
INSERT INTO dim_date (date_id, date, day_of_week, week_of_year, month, month_name, quarter, year, is_school_day, term) VALUES
  (20250901, '2025-09-01', 'Mon', 36, 9, 'September', 3, 2025, TRUE, 'Fall'),
  (20250902, '2025-09-02', 'Tue', 36, 9, 'September', 3, 2025, TRUE, 'Fall'),
  (20250903, '2025-09-03', 'Wed', 36, 9, 'September', 3, 2025, TRUE, 'Fall'),
  (20250904, '2025-09-04', 'Thu', 36, 9, 'September', 3, 2025, TRUE, 'Fall'),
  (20250905, '2025-09-05', 'Fri', 36, 9, 'September', 3, 2025, TRUE, 'Fall');

INSERT INTO dim_school (school_id, school_name, district, region, school_type, grade_span, capacity, opened_date) VALUES
  (101, 'Northview Elementary', 'Central District', 'North', 'elementary', 'K-5', 600, '2005-08-15'),
  (102, 'Riverside Middle', 'Central District', 'East', 'middle', '6-8', 750, '2008-08-15'),
  (103, 'Lakeside High', 'Central District', 'South', 'high', '9-12', 1200, '2010-08-15');

INSERT INTO dim_student (student_id, student_name, gender, birth_date, ethnicity, socioeconomic_status, special_education_flag, english_learner_flag, enrollment_status, entry_date, exit_date) VALUES
  (1001, 'Ava Carter', 'F', '2015-04-12', 'Hispanic', 'Low', FALSE, TRUE, 'active', '2023-08-15', NULL),
  (1002, 'Noah Kim', 'M', '2013-11-03', 'Asian', 'Medium', FALSE, FALSE, 'active', '2021-08-15', NULL),
  (1003, 'Mia Johnson', 'F', '2009-02-19', 'Black', 'Low', TRUE, FALSE, 'active', '2019-08-15', NULL),
  (1004, 'Ethan Reed', 'M', '2008-09-22', 'White', 'High', FALSE, FALSE, 'active', '2018-08-15', NULL);

INSERT INTO dim_teacher (teacher_id, teacher_name, hire_date, tenure_years, subject_area, certification_level) VALUES
  (501, 'Maria Lopez', '2016-08-10', 9, 'Math', 'Advanced'),
  (502, 'Daniel Ng', '2019-08-10', 6, 'ELA', 'Standard'),
  (503, 'Leah Patel', '2014-08-10', 11, 'Science', 'Advanced');

INSERT INTO dim_program (program_id, program_name, program_type, funding_source) VALUES
  (201, 'STEM Pathways', 'core', 'State Grant'),
  (202, 'Arts Integration', 'elective', 'District'),
  (203, 'Attendance Support', 'support', 'Federal');

INSERT INTO dim_course (course_id, course_name, subject_area, grade_level, credits) VALUES
  (301, 'Math 7', 'Math', 7, 1),
  (302, 'ELA 7', 'ELA', 7, 1),
  (303, 'Biology', 'Science', 10, 1);

-- Facts
INSERT INTO fact_attendance (attendance_id, date_id, school_id, student_id, attendance_status, absence_reason) VALUES
  (9001, 20250901, 101, 1001, 'present', NULL),
  (9002, 20250901, 102, 1002, 'tardy', 'transportation'),
  (9003, 20250901, 103, 1003, 'absent', 'illness'),
  (9004, 20250902, 103, 1004, 'present', NULL);

INSERT INTO fact_assessment (assessment_id, date_id, school_id, student_id, course_id, assessment_type, score, proficiency_level, max_score) VALUES
  (8001, 20250901, 102, 1002, 301, 'benchmark', 78, 'proficient', 100),
  (8002, 20250901, 102, 1002, 302, 'benchmark', 71, 'basic', 100),
  (8003, 20250903, 103, 1003, 303, 'state', 62, 'basic', 100),
  (8004, 20250904, 103, 1004, 303, 'state', 88, 'proficient', 100);

INSERT INTO fact_enrollment (enrollment_id, date_id, school_id, student_id, program_id, grade_level, enrollment_event) VALUES
  (7001, 20250901, 101, 1001, 203, 4, 'enrolled'),
  (7002, 20250901, 102, 1002, 201, 7, 'enrolled'),
  (7003, 20250901, 103, 1003, 201, 10, 'enrolled'),
  (7004, 20250901, 103, 1004, 202, 10, 'enrolled');

INSERT INTO fact_intervention (intervention_id, date_id, school_id, student_id, intervention_type, duration_hours, outcome) VALUES
  (6001, 20250902, 102, 1002, 'tutoring', 2.5, 'improved'),
  (6002, 20250903, 103, 1003, 'attendance_coaching', 1.0, 'no_change'),
  (6003, 20250904, 103, 1004, 'mentoring', 1.5, 'improved');

INSERT INTO fact_finance (finance_id, date_id, school_id, program_id, expense_category, amount) VALUES
  (5001, 20250901, 101, 203, 'staffing', 12000.00),
  (5002, 20250901, 102, 201, 'materials', 4500.00),
  (5003, 20250901, 103, 201, 'facilities', 8000.00),
  (5004, 20250901, 103, 202, 'materials', 3200.00);

COMMIT;
