--出入库流水和kcsl比较
select id,sum(decode(ywlx, 'FH', -crkcs, 'ZC', -crkcs, 'ST', -crkcs, crkcs)),
( select sum(kccs) from t_kcsl where id=t_crkls.id and kfbh=t_crkls.kfbh and ywbmbh=t_crkls.ywbmbh)
from t_crkls where ywbmbh = '503' AND KFBH ='2001'
group by kfbh,ywbmbh, ID
having sum(decode(ywlx, 'FH', -crkcs, 'ZC', -crkcs, 'ST', -crkcs, crkcs))<>( select sum(kccs) from t_kcsl where id=t_crkls.id and kfbh=t_crkls.kfbh and ywbmbh=t_crkls.ywbmbh)
-------用下边这三个逐一修改------------
--加损益
select * from t_ltkf  where id='D9787209073066002' for update
select * from t_kcsl where id='D9787209073066002' for update

rf_hwtz_kc
-------用下边这三个逐一修改------------
--kcsl和ltkf比较
select * from 
(select id,sum(kccs) kccs,sum(zycs) zycs,kfbh,ywbmbh from t_kcsl where    kfbh='2001' group by kfbh,id,ywbmbh) a,
(select id,sum(kccs) kccs,sum(zycs) zycs,kfbh,ywbmbh from t_ltkf where     kfbh='2001' group by kfbh,id,ywbmbh) b    
where a.kfbh=b.kfbh(+) and a.id=b.id(+) and a.ywbmbh=b.ywbmbh(+) and (a.kccs<>b.kccs or a.zycs<>b.zycs)

--出入库流水和发货到货社退损益比较
--fh
select * from 
(select sum(crkcs) cs,kfbh,id from t_crkls where ywbmbh='504' and kfbh='2001' and ywlx='FH' group by kfbh,id) a,
(select sum(sfcs) cs,kfbh,id from t_fhmx where ywbmbh='504' and kfbh='2001' group by kfbh,id) b 
where a.kfbh=b.kfbh(+) and a.id=b.id(+) and a.cs<>b.cs
--xt(第三方是全的)这玩艺分库房
select * from 
(select sum(crkcs) cs,kfbh,id from t_crkls where ywbmbh='504' and kfbh='2001' and ywlx='XT' group by kfbh,id) a,
(select sum(thcs) cs,kfbh,id from t_khthmx where ywbmbh='504' and kfbh='2001' group by kfbh,id) b 
where a.kfbh=b.kfbh(+) and a.id=b.id(+) and a.cs<>b.cs
--dh(第三方是全的)
select * from 
(select sum(crkcs) cs,kfbh,id from t_crkls where ywbmbh='504' and kfbh='2001' and ywlx='DH' group by kfbh,id) a,
(select sum(djshsl) cs,kfbh,id from t_dhls_jx where ywbmbh='504' and kfbh='2001' group by kfbh,id) b 
where a.kfbh=b.kfbh(+) and a.id=b.id(+) and a.cs<>b.cs
--st(第三方没有退社)
select * from 
(select sum(crkcs) cs,kfbh,id from t_crkls where ywbmbh='504' and kfbh='2001' and ywlx='ST' group by kfbh,id) a,
(select sum(thcs) cs,kfbh,id from t_hythmx where ywbmbh='504' and kfbh='2001' group by kfbh,id) b 
where a.kfbh=b.kfbh(+) and a.id=b.id(+) and a.cs<>b.cs
--sy
select sum(crkcs) cs, id,
nvl((select sum(decode(lx,'SY',cs,-cs)) sy_bak from t_sy_jh_bak where ywbmbh=t_crkls.ywbmbh and id=t_crkls.id),0),
nvl((select sum(decode(lx,'SY',cs,-cs)) sy  from t_sy_jh  where ywbmbh=t_crkls.ywbmbh and id=t_crkls.id),0)
from t_crkls where ywbmbh='504'   and ywlx in ('CY','SY') group by id,ywbmbh 
having sum(crkcs)<>nvl((select sum(decode(lx,'SY',cs,-cs)) sy_bak from t_sy_jh_bak where ywbmbh=t_crkls.ywbmbh and id=t_crkls.id),0)+
nvl((select sum(decode(lx,'SY',cs,-cs)) sy  from t_sy_jh  where ywbmbh=t_crkls.ywbmbh and id=t_crkls.id),0)

---最后对总帐
drop table t_crk_chd;
create table t_crk_chd as
select sum(decode(ywlx, 'FH', -crkcs, 'ZC', -crkcs, 'ST', -crkcs,'BF',-crkcs, crkcs)) kccs,id
      from t_crkls
     where ywbmbh ='504'   group by id;
drop table t_crk_chd2;
 create table t_crk_chd2 as
 select sum(kccs) kccs,id from t_kcsl where ywbmbh='504' group by id    
 select * from t_crk_chd a,t_crk_chd2 b where a.id(+)=b.id   
