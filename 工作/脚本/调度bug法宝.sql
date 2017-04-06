
update t_ltkf a set zycs=0 where zycs<>0 and not exists(select 1 from t_agv_rw_xt where id=a.id and hwh=a.hw) and not exists(select 1 from t_thxjb where id=a.id and hw=a.hw);
update t_kcsl a set zycs=0 where zycs<>0 and not exists(select 1 from t_agv_rw_xt where id=a.id and hwh=a.hw) and not exists(select 1 from t_thxjb where id=a.id and hw=a.hw);
commit;

select count(*) from t_ltkf a ,(
select id,sum(cs) cs,kfbh,hw from (
SELECT id,cs,kfbh,hw from t_thxjb union all
select id,yssl cs,kfbh,hwh hw from t_agv_rw_xt where ywbmbh='000001' or ywbmbh='000002') group by id,kfbh,hw) b where a.id=b.id and a.kfbh=b.kfbh and a.hw=b.hw and a.zycs<>b.cs 
union all
select count(*) from t_ltkf a   where zycs<>0 and not exists(select 1 from t_agv_rw_xt where id=a.id and hwh=a.hw) and not exists(select 1 from t_thxjb where id=a.id and hw=a.hw);
