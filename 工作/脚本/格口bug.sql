select * from 
(select sum(thcs) cs,ywpch from t_khthmx group by ywpch) a,
(select sum(crkcs) crkcs,ywpch from t_crkls group by ywpch) b
where a.cs<>b.crkcs and a.ywpch=b.ywpch

select ywpch,id,thcs,(select sum(crkcs) from t_crkls where id=a.id and ywpch=a.ywpch) crkcs,
(select max(xxrq) from t_gkxxxxb_bak where flowid_fjrw=a.flowid) xxrq
from t_khthmx a where flowid in (select flowid_fjrw from t_gkxxxxb_bak where xxrq>date'2016-1-13' and xxrq<date'2016-1-16' and gkh='46')
