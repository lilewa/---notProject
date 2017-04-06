
create table t_dhls_jx_chd as
select sum(djshsl) dhcs,dhpch ywpch  from t_dhls_jx where ywbmbh='000001' and shqrrq>date'2015-7-1' group by dhpch
 
create table t_dhls_jx_chd2 as
select sum(crkcs) dhcs,ywpch from t_crkls  where ywbmbh='000001' and crkrq>date'2015-7-1' and ywlx='DH' 
group by ywpch

select * from t_dhls_jx_chd a,t_dhls_jx_chd2 b where a.ywpch=b.ywpch and a.dhcs<>b.dhcs
/*drop table t_fhmx_chd2;
create table t_fhmx_chd as 
select sum(sfcs) fhcs,zdh ywpch from t_fhmx where ywbmbh='000001' and dbrq>date'2015-7-1' group by zdh;

create table t_fhmx_chd2 as 
select sum(crkcs) fhcs,ywpch from t_crkls  where ywlx='FH' and crkrq>date'2015-7-1' and  ywbmbh='000001'  group by ywpch

select * from t_fhmx_chd a,t_fhmx_chd2 b where a.ywpch=b.ywpch and a.fhcs<>b.fhcs*/
