--主配
select distinct zpxyrqh from t_zprw where xrrq <   to_date('2017/1/1 00:00:00','yyyy/mm/dd hh24:mi:ss');
--上架
select distinct tm from t_pmsjrwb where xrrq <   to_date('2017/1/1 00:00:00','yyyy/mm/dd hh24:mi:ss');
-- 退货上架
select distinct xm from t_fjrwsjb where rwrq <   to_date('2017/1/1 00:00:00','yyyy/mm/dd hh24:mi:ss');

 --下架
 select * from   T_DFBJ where pfrq <   to_date('2017/1/1 00:00:00','yyyy/mm/dd hh24:mi:ss') and jxfs='AD' and wcbj='0' 
 --未包装
  select bjlsh,rqh,jxfs,ywlx from   T_DFBJ where pfrq <   to_date('2017/1/1 00:00:00','yyyy/mm/dd hh24:mi:ss') and  ybzbj='0' and wcbj='1'

  select bjlsh,rqh,jxfs,ywlx from T_DFBJ  where pfrq <   to_date('2017/1/1 00:00:00','yyyy/mm/dd hh24:mi:ss') and  ybzbj='1' and lhbj='0'
 
