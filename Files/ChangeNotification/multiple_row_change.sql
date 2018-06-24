-- This will update two employee salaries in the EMPLOYEES table and one 
--   notification will be launched.

update employees set salary=salary+10 where employee_id=100 or employee_id=101;
commit;

-- This will update two employee salaries in the EMPLOYEES table and *no* 
--   notification will be launched in Oracle Database 11g because these rows 
--   are not part of the select list.

update employees set salary=salary+10 where employee_id=200 or employee_id=201;
commit;