--盘点 52769367.95
select sum(s.dj*l.crkcs ) from t_crkls l,t_kcsm s where ywlx='CP' and s.id=l.id；
-- 发货 53064548.5
select sum(sfcs*dj) from t_161228fhmx  l,t_kcsm s where  l.id=s.id 
--退货 4703073.65
select sum(thcs*dj) from t_161228hythmx  l,t_kcsm s where  l.id=s.id 
--客退  4046055.84
select sum(thcs*dj) from t_161228khthmx l,t_kcsm s where  l.id=s.id 
--到货 55927793.26
 select sum(djshsl*dj) from t_161228dhls_jx  l,t_kcsm s where  l.id=s.id  
--客退 20704.9
 select sum(s.dj*l.ywsl ) from t_161228fjrwb_bf l,t_kcsm s where s.id=l.id 
--差异 -944350.4
 select sum(s.dj*l.crkcs ) from t_161228crkls l,t_kcsm s where s.id=l.id and ywlx='CY'

--54051949.4
select 52769367.95- 53064548.5-4703073.65+4046055.84+55927793.26+20704.9-944350.4 from dual


--kcsl 49932431.55
select sum(l.kccs*s.dj)  from t_161228kcsl l,t_kcsm s where  l.id=s.id   
--  hykcsl 2514741.95
select sum(NVL2(jhcs,jhcs,kccs)*s.dj)  from t_161228hykcsl l,t_kcsm s where  l.id=s.id     
--bfkcsl  19.9
select sum(kccs*s.dj)  from t_bfkcsl l,t_kcsm s where  l.id=s.id   
--pxmx 1618644.1
select sum(NVL2(jhcs,jhcs,yscs)*s.dj)  from t_161228pxmx l,t_kcsm s where  l.id=s.id   
--54065837.5
select 49932431.55+2514741.95+19.9+1618644.1 from dual 
