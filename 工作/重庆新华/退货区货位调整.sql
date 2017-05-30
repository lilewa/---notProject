select * from T_GHDWHWBAK t where hw='970020731'

select  * from t_ghdw_hythqhw a,t_ghdw_hythqhw170504 b where a.ghdwh=b.ghdwh
and b.rqh <> a.rqh is null and a.hw<>b.hw

where hqbh='93'
and exists (select 1 from t_dfbj where wcbj='0'  and ghdwh=t.ghdwh)

select * from t_hykcsl t 
 where exists (select 1 from t_dfbj where wcbj='0'  and t.bjlsh=bjlsh)
 and exists (select 1 from t_ghdw_hythqhw where ghdwh=t.ghdwh and hw<>t.hw)
 
 create table t_hykcsl0508 as select count(*) from t_hykcsl0508;
 
 update t_hykcsl t set hw=(select hw from t_ghdw_hythqhw where ghdwh=t.ghdwh)
 
   
  where exists (select 1 from t_dfbj where wcbj='0'  and t.bjlsh=bjlsh)
 and exists (select 1 from t_ghdw_hythqhw where ghdwh=t.ghdwh and hw<>t.hw)
 
    update t_ghdw_hythqhw a
    set rqh=(
    select xm from  t_hykcsl t  where 
    exists (select 1 from t_dfbj where wcbj='0'  and t.bjlsh=bjlsh) and ghdwh=a.ghdwh and rownum=1
    )
    
    where rqh is null and 
    exists (
     select 1  from t_hykcsl t  where 
    exists (select 1 from t_dfbj where wcbj='0'  and t.bjlsh=bjlsh)
  and a.ghdwh=t.ghdwh  
  
  )
