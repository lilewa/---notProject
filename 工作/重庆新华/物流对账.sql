--�ڳ�
select sum(decode(ywlx,'FH',-crkcs,'ZC',-crkcs,'BF',-crkcs,'ST',-crkcs,crkcs)),kfbh from t_crkls where ywbmbh='504' and crkrq<date'2016-6-30'  group by kfbh;
--��������
select * from 
(select sum(crkcs) cs,ywlx from t_crkls where ywbmbh='504' and crkrq>=date'2015-12-1'  group by ywlx) a,
(
select sum(djshsl) cs,'DH' ywlx from t_dhls_jx where ywbmbh='504' and shrq>=date'2015-12-1' union
select sum(sfcs) cs,'FH' ywlx from t_fhmx where ywbmbh='504' and  dbrq>date'2015-12-1' union
select sum(thcs) cs,'ST' ywlx from t_hythmx where ywbmbh='504' and  dbrq>date'2015-12-1' union
select sum(thcs) cs,'XT' ywlx from t_khthmx where ywbmbh='504' and  lrrq1>date'2015-12-1' union 
select sum(decode(lx,'BS',-cs,cs)) cs,'CY' ywlx from t_sy_jh where ywbmbh='504' and  rq>date'2015-12-1') b
where a.ywlx=b.ywlx(+)



--crkls��Ӧkcslƽ��
select * from 
(select sum(kccs) kccs,id,kfbh from t_kcsl where ywbmbh='504' group by id,kfbh) a,(
select sum(decode(ywlx,'FH',-crkcs,'ZC',-crkcs,'BF',-crkcs,'ST',-crkcs,crkcs)) jskc,kfbh,id 
from t_crkls where ywbmbh='504'   group by kfbh,id) b
where a.kfbh=b.kfbh and a.id=b.id and a.kccs<>b.jskc;
--kcsl��Ӧltkfƽ��
select * from 
(select sum(kccs) cs,kfbh,id from t_ltkf where ywbmbh='504' group by kfbh,id) a,(
select sum(kccs) cs,kfbh,id from t_kcsl where ywbmbh='504' group by kfbh,id) b
where a.id=b.id and a.kfbh=b.kfbh and a.cs<>b.cs;
--����ƽ��
select * from 
(select sum(djshsl) cs,id,kfbh from t_dhls_jx where ywbmbh='504' group by id,kfbh) a,
(select sum(crkcs) cs,id,kfbh from t_crkls where ywbmbh='504' and ywlx='DH' group by id,kfbh) b
where a.kfbh=b.kfbh and a.id=b.id and a.cs<>b.cs;
--����ƽ��
select * from 
(select sum(sfcs) cs,id,kfbh from t_fhmx where ywbmbh='504' group by id,kfbh) a,
(select sum(crkcs) cs,id,kfbh from t_crkls where ywbmbh='504' and ywlx='FH' group by id,kfbh) b
where a.kfbh=b.kfbh and a.id=b.id and a.cs<>b.cs;
--����ƽ��
select * from 
(select sum(thcs) cs,id,kfbh from t_khthmx where ywbmbh='504' group by id,kfbh) a,
(select sum(crkcs) cs,id,kfbh from t_crkls where ywbmbh='504' and ywlx='XT' group by id,kfbh) b
where a.kfbh=b.kfbh and a.id=b.id and a.cs<>b.cs;
--������ϸ
select * from (
select ywpch,sum(crkcs) cs from t_crkls where ywlx='XT' and id='9787545016635002  ' group by ywpch) a,(
select ywpch,sum(thcs) cs from 
(select ywpch,thcs from t_khthmx where   id='9787545016635002  ' and thcs<>0
union all
select ywpch,sjsl as thcs from t_fjrwb_bf where   id='9787545016635002  ' and sjsl<>0 ) group by ywpch) b
where a.ywpch=b.ywpch and a.cs<>b.cs
--����ƽ��
select * from 
(select sum(thcs) cs,id,kfbh from t_hythmx where ywbmbh='504' group by id,kfbh) a,
(select sum(crkcs) cs,id,kfbh from t_crkls where ywbmbh='504' and ywlx='ST' group by id,kfbh) b
where a.kfbh=b.kfbh and a.id=b.id and a.cs<>b.cs;
--����ƽ��
select * from 
(select sum(decode(lx,'BS',-cs,cs)) cs,id,kfbh from 
(select * from t_sy_jh where ywbmbh='504' union all select * from t_sy_jh_bak where ywbmbh='504') where rq>date'2016-6-30' group by id,kfbh) a,
(select sum(crkcs) cs,id,kfbh from t_crkls where ywbmbh='504' and ywlx in ('CY','SY') and crkrq>date'2016-6-30' group by id,kfbh) b
where a.kfbh=b.kfbh and a.id=b.id and a.cs<>b.cs;
---������ϸ
select * from 
(select sum(decode(lx,'BS',-cs,cs)) cs,id,kfbh,to_char(rq,'yyyymmdd') rq from 
(select * from t_sy_jh where ywbmbh='504' and id='9787538559279000' union all 
 select * from t_sy_jh_bak where ywbmbh='504'  and id='9787538559279000') group by id,kfbh,to_char(rq,'yyyymmdd')) a,
(select sum(crkcs) cs,id,kfbh,to_char(crkrq,'yyyymmdd') rq from t_crkls where ywbmbh='504' and id='9787538559279000' and ywlx in ('CY','SY') group by id,kfbh,to_char(crkrq,'yyyymmdd')) b
where a.kfbh(+)=b.kfbh and a.id(+)=b.id and a.rq(+)=b.rq and nvl(a.cs,0)<>nvl(b.cs,0) 

select sum(crkcs) from t_crkls where ywlx='ZR' and crkrq>date'2016-6-30' and ywbmbh='504';
select sum(crkcs) from t_crkls where ywlx='ZC' and crkrq>date'2016-6-30' and ywbmbh='504'
