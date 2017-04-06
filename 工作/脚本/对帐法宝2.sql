select * from 
(select a.id,b.id idb,a.kca,b.kcb,a.zya,b.zyb from 
(select sum(kccs) kca,sum(zycs) zya,ywbmbh,id from t_kcsl where ywbmbh='000002' group by ywbmbh,id)a,
(select sum(kccs) kcb,sum(zycs) zyb,ywbmbh,id from t_ltkf  where ywbmbh='000002' group by ywbmbh,id)b
where a.ywbmbh=b.ywbmbh and a.id=b.id(+)) where (kca<> kcb   )
-----------------------
select sum(decode(ywlx,'FH',-crkcs,'ZC',-crkcs,'ST',-crkcs,crkcs)) cs,id from t_crkls a where ywbmbh='000001' and not exists(select 1 from t_kcsl where id=a.id and ywbmbh='000001')   group by id having sum(decode(ywlx,'FH',-crkcs,'ZC',-crkcs,'ST',-crkcs,crkcs))<>0
