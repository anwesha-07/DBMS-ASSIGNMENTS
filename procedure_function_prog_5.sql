CREATE OR REPLACE FUNCTION total_salary_dept(p_dept_name VARCHAR2)
RETURN NUMBER AS
v_total NUMBER;
BEGIN
SELECT SUM(SAL)
INTO v_total
FROM EMPLOYEEE
WHERE dept_name=p_dept_name;
RETURN v_total;
END;
/
