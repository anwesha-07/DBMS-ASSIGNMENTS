CREATE OR REPLACE PROCEDURE emp_no(
p_deptno IN NUMBER
)
IS
v_grade_a NUMBER;
v_grade_b NUMBER;
v_grade_c NUMBER;
BEGIN
SELECT
COUNT(CASE WHEN GRADE='A' THEN 1 END),
COUNT(CASE WHEN GRADE='B' THEN 1 END),
COUNT(CASE WHEN GRADE='C' THEN 1 END)
INTO
v_grade_a,
v_grade_b,
v_grade_c
FROM EMPLOYEEE
WHERE DEPT_ID=p_deptno;
DBMS_OUTPUT.PUT_LINE('Grade A Employee' || v_grade_a);
DBMS_OUTPUT.PUT_LINE('Grade B Employee' || v_grade_b);
DBMS_OUTPUT.PUT_LINE('Grade C Employee' || v_grade_c);
END;
/
