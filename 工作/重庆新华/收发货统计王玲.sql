--收货
select count(distinct x.ghdwh) 供货商,count(distinct x.id) 总品种,sum(djshsl) 总册数
,sum(dj*djshsl) 总码洋,sum(sys) 总实洋, decode(zfzd, '1', '直发', '正常') 方式
from t_dhls_jx x,t_kcsm s,
t_dhdj j where x.flowid_dj=j.flowid_dj and x.id=s.id
AND shrq> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  shrq< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
and x.ywbmbh in('000002','000004')
group by  decode(zfzd, '1', '直发', '正常')  ;

 --发货
 select count(distinct x.dh) 客户,count(distinct x.id) 总品种,sum(sfcs) 总册数
,sum(dj*sfcs) 总码洋,sum(sys) 总实洋, decode(x.zl, '1', '直发', '正常') 方式 from t_fhmx  x,t_kcsm s 
 where x.id=s.id 
 AND dbrq> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  dbrq< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
  and x.ywbmbh in('000001','000005')
group by  decode(x.zl, '1', '直发', '正常')  ;

-- 社退
select count(distinct x.hybh) 客户,count(distinct x.id) 总品种,sum(thcs) 总册数
,sum(dj*thcs) 总码洋,sum(sys) 总实洋 from t_hythmx  x,t_kcsm s 
 where x.id=s.id 
 AND dbrq> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  dbrq< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
  and x.ywbmbh in('000002','000004')
--客退

select count(distinct x.dh) 客户,count(distinct x.id) 总品种,sum(thcs) 总册数
,sum(dj*thcs) 总码洋,sum(sys) 总实洋 from t_khthmx  x,t_kcsm s 
 where x.id=s.id 
 AND lrrq1> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  lrrq1< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
  and x.ywbmbh in('000001','000005')
