CREATE OR REPLACE PROCEDURE update_salary(
p_eno IN NUMBER,
p_percentage IN NUMBER
)
AS
BEGIN
UPDATE EMPLOYEEE
SET SAL=SAL+(SAL*p_percentage/100)
WHERE E_ID=p_eno;
COMMIT;
END;
/
