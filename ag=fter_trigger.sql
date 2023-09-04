create or replace trigger trg_aft
AFTER UPDATE OF SALARY ON customer
FOR EACH ROW
DECLARE
username varchar2(20);
BEGIN
--get current login user
SELECT USER INTO username FROM dual;
--insert new values into log table.
INSERT INTO customer_salary_log VALUES(:NEW.ID,:NEW.SALARY,sysdate,username);
end;
/
