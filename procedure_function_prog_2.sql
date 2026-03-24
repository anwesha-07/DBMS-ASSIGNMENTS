CREATE OR REPLACE PROCEDURE display_emp_details (
    p_emp_no IN NUMBER
) AS
    v_name employeee.e_name%TYPE;
    v_desig employeee.dept_name%TYPE;
    v_sal employeee.sal%TYPE;
BEGIN
    SELECT e_name, dept_name, sal
    INTO v_name, v_desig, v_sal
    FROM employeee
    WHERE e_id = p_emp_no;

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Designation: ' || v_desig);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_sal);
END;
/
