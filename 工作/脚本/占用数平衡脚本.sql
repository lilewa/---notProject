drop table t_chd;
create table t_chd as
select a.*,a.zycs-a.sjzycs cy from v_zys a  where (kczy<>kczycs) or (zycs<>sjzycs)

select * from t_ltkf  where id='9787533285470001' for update
/*update t_kcsl a set zycs=0 where not exists(select 1 from t_agv_rw_xt where id=a.id) and not exists
(select 1 from t_thxjb where id=a.id) and zycs<>0 and ywbmbh='000001'

update t_ltkf a set zycs=0 where not exists(select 1 from t_agv_rw_xt where id=a.id) and not exists
(select 1 from t_thxjb where id=a.id) and zycs<>0 and ywbmbh='000001'*/

drop table t_chd ;
create table t_chd as
select c.id,a.yssl agv,d.cs thxj,lkzy,kczy,zpzy from 
(select sum(yssl) yssl,id from t_agv_rw_xt where ywbmbh='000001' group by id) a,
(select sum(cs) cs,id from t_thxjb where ywbmbh='000001' group by id) d,
(select sum(yssl) zpzy,id from t_zprw where ywbmbh='000001' group by id) e,
(select sum(zycs) lkzy,id from t_ltkf where ywbmbh='000001' group by id) b,
(select sum(zycs) kczy,id from t_kcsl where ywbmbh='000001' group by id) c
where a.id(+)=c.id and c.id=b.id(+) and c.id=d.id(+) and c.id=e.id(+) 
and (nvl(a.yssl,0)+nvl(d.cs,0)<>nvl(lkzy,0) or nvl(a.yssl,0)+nvl(d.cs,0)+nvl(zpzy,0)<>nvl(kczy,0))
 
select * from t_chd
select hwh,yssl from t_agv_rw_xt where id='9787561356012001';
select * from t_ltkf where id='9787561356012001' for update;
select * from t_kcsl where zycs<0 for update
 

select * from t_agv_rw_xt_bak where id='C9787532880744001 ' 
select * from t_kcsl where id='9787555213772001' for update
 
update t_kcsl a set zl=(select zl from t_kcsm where id=a.id and dbbz=a.dbbz and xbbz=a.xbbz)
 where zycs=0 and exists(select 1 from t_kcsm where id=a.id and dbbz=a.dbbz and xbbz=a.xbbz and zl<>a.zl)
 and not exists (select 1 from t_ltkf where id=a.id and hw=a.hw and dbbz=a.dbbz and xbbz=a.xbbz and zl<>a.zl)
select * from  t_ltkf a  
 where zycs=0 and exists(select 1 from t_kcsm where id=a.id and dbbz=a.dbbz and xbbz=a.xbbz and zl<>a.zl)

select * from t_ltkf where zycs is null;
select * from t_kcsl where zycs is null

---发货是否满足的查询语句
select a.id,(select xh_3th from t_books_ywbm@c_link_wl_jhq where id=a.id) sl_id ,a.cgyj_kh,a.kfbh,a.ywbmbh,a.djsl,kccs  from t_fhrwb a,
(select sum(kccs-zycs) kccs,id,kfbh,ywbmbh from t_ltkf group by id,kfbh,ywbmbh) b
where a.id=b.id(+) and a.kfbh=b.kfbh(+) and a.ywbmbh=b.ywbmbh(+)
and a.cgyj_kh='PXD91940'
