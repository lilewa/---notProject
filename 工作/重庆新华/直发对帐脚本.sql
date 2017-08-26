drop table a;
create table a as 
select sum(cs)cs,id from (
select sum(decode(lx,'BS',-cs,cs)) cs,id  from t_SY_JH_BAK WHERE RQ>=DATE'2013-12-01' AND RQ<DATE'2014-11-30' and ywbmbh='000001' and zybj='1' group by id union all
select sum(decode(lx,'BS',-cs,cs)) cs,id  from t_SY_JH_BAK WHERE RQ>=DATE'2013-12-01' AND RQ<DATE'2014-11-30' and ywbmbh='000001' and zybj='2' group by id) group by id;
  
 drop table b;
create table b as
select sum(cs)cs,id from (
select sum(djshsl) cs,id from t_dhls_jx  where    shRQ>=DATE'2013-12-01' AND shrq<DATE'2014-11-30' and ywbmbh='000001'And Exists (Select 1 From t_dhdj Where flowid_dj=t_dhls_jx.flowid_dj And zfzd='1') group by id union all
select -sum(sfcs) cs,id from v_fhmx where  djly='ZF' and dbRQ>=DATE'2013-12-01' AND dbRQ<DATE'2014-11-30' and ywbmbh='000001' group by id) group by id;

select  * from a,b where a.id=b.id and a.cs<>-b.cs

select * from t_sy_jh_bak where id='9787511004987000' and  RQ>=DATE'2013-12-01' AND RQ<DATE'2014-11-30' and ywbmbh='000001' and (zybj='1' or zybj='2')
