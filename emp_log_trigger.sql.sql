delimiter //
create trigger emp_log
after insert
on employee_1
for each row
begin
    insert into insert_log_data(emp_id,emp_name,department,inserted_date)
    values(new.emp_id,new.emp_name,new.department,now());
end //
delimiter ;