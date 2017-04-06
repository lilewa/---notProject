select * from 
(select sum(sjsl) cs,gbczybh from t_fjrwb_bak1 a where tjrq>sysdate-8  group by gbczybh) a,(
select sum(cs) cs,czybh from  t_gzl  where czlx='FJSX'  and czrq>sysdate-8 group by czybh) b
where a.gbczybh=b.czybh


select * from 
(select sum(sjsl) cs,gbczybh,to_char(tjrq,'yyyymmddhh24') rq from t_fjrwb_bak1 a where tjrq>sysdate-8  group by gbczybh,to_char(tjrq,'yyyymmddhh24')) a,(
select sum(cs) cs,czybh,to_char(czrq,'yyyymmddhh24') rq from  t_gzl  where czlx='FJSX'  and czrq>sysdate-8 group by czybh,to_char(czrq,'yyyymmddhh24')) b
where a.gbczybh=b.czybh  and a.rq=b.rq(+)

select * from 
( select sum(sjsl) cs,to_char(tjrq,'yyyymmddhh24') rq  from t_fjrwb_bak1 a where tjrq>sysdate-300  group by to_char(tjrq,'yyyymmddhh24') ) a,(
select sum(cs) cs,  to_char(czrq,'yyyymmddhh24') rq from  t_gzl  where czlx='FJSX'  and czrq>sysdate-300  group by to_char(czrq,'yyyymmddhh24') ) b
where a.rq=b.rq(+) and nvl(a.cs,0)<>nvl(b.cs,0)
