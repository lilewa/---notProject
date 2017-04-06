select max(wjbj) a,min(wjbj) b,
sum(bmzcs_wl) bmzcs,sum(fhcs_wl) sfcs,(select zcs from t_sl_ywzl_hz where flowid_dj=a.djbh_sl) zlcs,djbh_sl,ywbmbh 
from t_ckqk_mx@c_link_dbwl a   group by djbh_sl,ywbmbh  
-- having (max(wjbj) + min(wjbj))/2 not in (1,0)
--having sum(bmzcs_wl) + sum(fhcs_wl) = (select zcs from t_sl_ywzl_hz where flowid_dj=a.djbh_sl)

--select * from t_ckqk_mx@c_link_dbwl where djbh_sl=1300
