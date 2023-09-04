create or replace trigger checkage
before insert or update on customer 
for each row 
begin
if :new.Age<10 then
raise_application_error(-20001,'Age should not be less than 10');
end if;
end;
/
