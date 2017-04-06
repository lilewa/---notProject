--ÊÂÎñËø×·×Ù´ıĞø\
select * from dba_2pc_pending where state not like 'f%';
select * from v$transaction;
select a.*,(select name from sys.obj$ where obj#=a.object_id) name from v$locked_object a;

select
substr(s.username,1,18) username,
s.sid,s.serial#,s.machine,y.sql_text
from v$session s,v$process p,v$transaction t,v$rollstat r,v$rollname n,v$sql y
where s.paddr = p.addr and s.taddr = t.addr (+) and t.xidusn = r.usn (+) and 
r.usn = n.usn (+) and s.username is not null and s.sql_address=y.address
order by s.sid,s.serial#,s.username,s.status; 
