 --发货数据不一致
 create table t_ad as 
 select  zmy,bjlsh from t_wcbj where   jxfs='ZF' 
 minus

 select sum(sfcs*dj) fhmy,bjlsh  from t_kcsm, t_fhmx where t_kcsm.id=t_fhmx.id and t_fhmx.zl=1 
 group by bjlsh 


 --数据要一致
select sum(zmy) from  t_dhdj   where  zfzd='1' and ywbmbh='000001'; 3492265.8
select sum(zmy) from t_wcbj where   jxfs='ZF' and ywbmbh='000001' 


Select Sum(sfcs * dj)
	From t_kcsm, t_fhmx
 Where t_kcsm.id = t_fhmx.id And Exists
 (Select 1 From t_dhdj Where zdjspch = t_fhmx.bjlsh And zfzd = '1') 3926443.9
 
 
 

