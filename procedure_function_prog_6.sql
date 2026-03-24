CREATE OR REPLACE FUNCTION total_emp_dept(p_dept_id NUMBER)
RETURN NUMBER AS
v_total NUMBER;
BEGIN
SELECT COUNT(*)
INTO v_total
FROM EMPLOYEEE
WHERE dept_id=p_dept_id;
RETURN v_total;
END;
/
