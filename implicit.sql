set serveroutput on;
declare
total_rows number(2);
begin
update emp2
set salary=salary+500;
if sql%notfound then
dbms_output.put_line('no employee selected');
elsif sql%found then
total_rows:=sql%rowcount;
dbms_output.put_line(total_rows||'employees selected');
end if;
end;
/
