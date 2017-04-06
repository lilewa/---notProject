drop table a;
create table a as 
select sum(cs)cs,id from (
select sum(decode(lx,'BS',-cs,cs)) cs,id   from t_sy_jh_bak where   RQ>=DATE'2013-12-01' AND RQ<DATE'2014-11-30' and ywbmbh='000001' and zybj='4'　group by id 　) group by id;
  select sum(decode(lx,'BS',-cs,cs)) cs   from t_sy_jh_bak where   RQ>=DATE'2013-12-01' AND RQ<DATE'2014-11-30' and ywbmbh='000001' and zybj='4'　group by id 
 drop table b;
create table b as
select sum(cs)cs,id from (
select sum(thcs) cs,id from t_khthmx where bz like '距質%' and  lrrq1>=DATE'2013-12-01' AND lrrq1<DATE'2014-11-30' and ywbmbh='000001' group by id   union all
select -sum(sfcs) cs,id from v_fhmx where  djly='TJ' and dbRQ>=DATE'2013-12-01' AND dbRQ<DATE'2014-11-30' and ywbmbh='000001' group by id) group by id;

select  * from a,b where a.id(+)=b.id and b.cs=0 and a.cs is not null
select sum(thcs)　from t_khthmx where bz like '距質%' and  lrrq1>=DATE'2013-12-01' AND lrrq1<DATE'2014-11-30' and ywbmbh='000001' 
select sum(decode(lx,'BS',-cs,cs)) from t_sy_jh_bak where   RQ>=DATE'2013-12-01' AND RQ<DATE'2014-11-30' and ywbmbh='000001' and zybj=4 order by cs,id
2447227
select  * from a,b where a.id=b.id  and nvl(a.cs,0) <> -nvl(b.cs,0)
select * from a where not exists (select 1 from b where b.id=a.id)
select * from b where not exists (select 1 from a where b.id=a.id) 
