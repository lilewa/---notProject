--二楼下架件数，码洋
select sum(bzjs),sum(zmy) from t_dfbj b where pfrq>to_date('2016/12/21 00:00:00','yyyy/mm/dd hh24:mi:ss') 
and  pfrq<to_date('2017/1/21 00:00:00','yyyy/mm/dd hh24:mi:ss') and jxfs='AD'
and exists (select 1 from t_agv_rw_xt_bak a,t_hwdy w where 
a.hwh=w.hw and w.hqbh not in('20','21','18') and b.bjlsh=a.phdh ) 

select count(distinct id) from t_agv_rw_xt_bak a , t_dfbj b 
where pfrq>to_date('2016/12/21 00:00:00','yyyy/mm/dd hh24:mi:ss') 
and  pfrq<to_date('2017/1/21 00:00:00','yyyy/mm/dd hh24:mi:ss') and b.jxfs='AD'
and a.phdh=b.bjlsh 


--大货量下架件数，码洋

select sum(bzjs),sum(zmy) from t_dfbj b where pfrq>to_date('2016/12/21 00:00:00','yyyy/mm/dd hh24:mi:ss') 
and  pfrq<to_date('2017/1/21 00:00:00','yyyy/mm/dd hh24:mi:ss') and jxfs='AD'
and exists (select 1 from t_agv_rw_xt_bak a,t_hwdy w where 
a.hwh=w.hw and w.hqbh ='18' and b.bjlsh=a.phdh ) 
 
 

--二楼下架包件数量
select sum(bzjs),sum(zmy) from t_dfbj where jxfs='AD'   and wcbj='1' 
and pfrq >to_date('2016/12/21 00:00:00','yyyy/mm/dd hh24:mi:ss') 
and pfrq <to_date('2017/1/21 00:00:00','yyyy/mm/dd hh24:mi:ss') 
刘翔2017  李欣2022   王欣   王松 3062  吴波 2011  薛景 2020
select * from t_user where name  like '%王鑫%'
select * from t_gzl where czlx='DHFL' and 
--分流品种数，箱子数
    select count(distinct id),count(*) from t_dhfl1_xtw_bak where  czrq >to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss') 
    and czrq <to_date('2016/12/21 00:00:00','yyyy/mm/dd hh24:mi:ss') 
    and czybh='3072'
    
 
    
