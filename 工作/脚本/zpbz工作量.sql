select a.*,b.*,a.cs-b.cs2  from 
(select sum(cs) cs,count(*) ts,czybh from t_gzl where czlx='ZPBZ' and czrq>sysdate-700  group by czybh) a,
(select sum(yssl) cs,sum(zdxh) cs2 ,count(*) ts,zpczybh from t_zprw_bak where  bzrq>sysdate-700   group by zpczybh) b
where   a.czybh =b.zpczybh
and a.cs<>b.cs order by zpczybh,abs(a.cs-b.cs)
