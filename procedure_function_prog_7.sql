CREATE OR REPLACE FUNCTION calc_bonus(p_emp_id 	NUMBER)
RETURN NUMBER AS
v_total NUMBER;
BEGIN
SELECT SAL*0.20
INTO v_total
FROM EMPLOYEEE
WHERE e_id=p_emp_id;
RETURN v_total;
END;
/
