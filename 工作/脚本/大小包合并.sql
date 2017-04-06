drop table t_chd;
create table t_chd as
select min(rowid) as row_id,id,hw,count(*) ts,sum(kccs) kccs,sum(zycs) zycs from t_ltkf 
where ywbmbh in ('000001','000002')
 group by id,hw having count(*)>1;
delete from t_ltkf a where exists(select 1 from t_chd where id=a.id and hw=a.hw and row_id<>a.rowid);
update t_ltkf a set kccs=(select kccs from t_chd where id=a.id and hw=a.hw and row_id=a.rowid)
where exists(select 1 from t_chd where id=a.id and hw=a.hw and row_id=a.rowid)
 

update t_ltkf a set dbbz=(select dbbz from t_kcsm where id=a.id),xbbz=(select xbbz from t_kcsm where id=a.id),
zl=(select zl from t_kcsm where id=a.id)
where  exists (select 1 from t_chd where id =a.id and hw=a.hw)
