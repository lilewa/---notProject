
create table t_khthmx_chd as
select sum(thcs) thcs,ywpch  from t_khthmx where ywbmbh='000001' and lrrq>date'2015-7-1' group by ywpch
 
create table t_khthmx_chd2 as
select sum(crkcs) thcs,ywpch from t_crkls  where ywbmbh='000001' and crkrq>date'2015-7-1' and ywlx='XT' 
group by ywpch

select * from t_khthmx_chd a,t_khthmx_chd2 b where a.ywpch=b.ywpch and a.thcs<>b.thcs

create table t_hythmx_chd as 
select sum(thcs) thcs,bjlsh ywpch from t_hythmx where ywbmbh='000001' and dbrq>date'2015-7-1' group by bjlsh

create table t_hythmx_chd2 as 
select sum(crkcs) thcs,ywpch from t_crkls  where ywlx='ST' and crkrq>date'2015-7-1' and  ywbmbh='000001'  group by ywpch

select * from t_hythmx_chd a,t_hythmx_chd2 b where a.ywpch=b.ywpch and a.thcs<>b.thcs
