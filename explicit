set serveroutput on;
declare
empid emp2.id%type;
name emp2.name%type;
sal emp2.salary%type;
cursor c_emp is
select empid,name,sal from emp2;
begin
open c_emp;
loop
fetch c_emp into empid,name,sal;
exit when c_emp%notfound;
dbms_output.put_line(empid||''||name||''||sal);
end loop;
close c_emp;
end;
/
