select * from (
select sum(crkcs) crkcs,ywlx,kfbh from t_crkls where id='9787545015614002 ' group by ywlx,kfbh) a,
(select sum(sfcs) cs,kfbh,'FH' as ywlx from t_fhmx@c_link_wl_sl where id='9787545015614002 ' group by kfbh union all
select sum(thcs) cs,kfbh,'XT' as ywlx from t_khthmx@c_link_wl_sl where id='9787545015614002 ' group by kfbh union all
select sum(djshsl) cs,kfbh,'DH' as ywlx from  t_dhls_jx@c_link_wl_sl where  id='9787545015614002 ' group by kfbh union all
select sum(thcs) cs,kfbh,'ST' as ywlx from t_hythmx@c_link_wl_sl where id='9787545015614002 ' group by kfbh 
) b,(select sum(sfcs) cs,kfbh,'FH' as ywlx from t_fhmx where id='9787545015614002 ' group by kfbh union all
select sum(thcs) cs,kfbh,'XT' as ywlx from t_khthmx where id='9787545015614002 ' group by kfbh union all
select sum(djshsl) cs,kfbh,'DH' as ywlx from  t_dhls_jx where  id='9787545015614002 ' group by kfbh union all
select sum(thcs) cs,kfbh,'ST' as ywlx from t_hythmx where id='9787545015614002 ' group by kfbh union all
select sum(decode(lx,'SY',cs,-cs)) cs ,kfbh,'CY' as ywlx from t_sy_jh where id='9787545015614002 ' group by kfbh union all
select sum(decode(lx,'SY',cs,-cs)) cs ,kfbh,'SY' as ywlx from t_sy_jh_bak where id='9787545015614002 ' group by kfbh
) c
 where a.ywlx=b.ywlx(+) and a.kfbh=b.kfbh(+) and a.ywlx=c.ywlx(+) and a.kfbh=c.kfbh(+) order by a.kfbh;
 
 
 
 

select sum(decode(ywlx,'FH',-crkcs,'ZC',-crkcs,'BF',-crkcs,crkcs)) crkcs,kfbh from t_crkls where id='9787545015614002 ' group by kfbh;
select sum(kccs),kfbh from t_ltkf where id='9787545015614002 ' group by kfbh;
select sum(kccs),kfbh from t_kcsl where id='9787545015614002 ' group by kfbh;
select * from t_crkls where id='9787545015614002' and kfbh='2003';
select * from t_bfkcsl where id='9787545015614002';
select * from t_crkls where id='9787545015614002' 
-----------------------------------
/*select * from 
(select ywpch,sum(crkcs) cs from t_crkls where id='9787545015614002 ' and ywlx='FH' group by ywpch) a,
(select bjlsh,sum(sfcs) cs from t_fhmx where id='9787538544657003' group by bjlsh) b where a.ywpch(+)=b.bjlsh and a.cs<>b.cs
select * from t_khthmx where id='9787545015614002 ' for update

--------------




select sum(decode(ywlx,'FH',-crkcs,'ZC',-crkcs,'ST',-crkcs,crkcs)) cs,id from t_crkls a where ywbmbh='000002' and not exists(select 1 from t_kcsl where id=a.id and ywbmbh='000002')   group by id having sum(decode(ywlx,'FH',-crkcs,'ZC',-crkcs,'ST',-crkcs,crkcs))<>0

select * from 
(select sum(kccs) cs,id from t_ltkf where ywbmbh='000001' group by id) a,
(select sum(kccs) cs,id from t_kcsl where ywbmbh='000001' group by id) b where a.id=b.id and  a.cs<>b.cs
*/
