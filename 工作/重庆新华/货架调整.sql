select * from t_changehw_tmp for update;

select oldhw from t_changehw_tmp  group by oldhw having count(*)>1;

select * from t_changehw a where exists (select 1 from t_changehw_tmp where oldhw=a.oldhw);

insert into  t_changehw (oldhw,newhw) 
select oldhw,newhw from t_changehw_tmp

select * from t_changehw where pocessrq is null ;

PROC_HJTZ 
update t_changehw set pocessrq='424' where pocessrq is null 

delete t_changehw_tmp

select * from t_changehw_tmp  where oldhw='090051231'