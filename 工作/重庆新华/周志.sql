--�ջ�
select trunc(tlrq) , sum(ysjs) ��from t_tldjhz where tlrq>to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
and tlrq<  to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss')
and djlx = 'DH'
group by trunc(tlrq);
 --���
SELECT trunc(cbrq),sum(  T_TLDJHZ.SSJS)  
  FROM T_TLDJHZ
 WHERE (NVL(YCBBJ, '0') = '1' or YCBBJ='2') 
   and cbrq >to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
   and cbrq <to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss')
   and djlx = 'DH' and kl_flag <> '1'
   group by trunc(cbrq)
 order by trunc(cbrq) ;
--����
 select trunc(flrq) , sum(ysjs) ��from t_tldjhz where flrq>to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
and flrq<  to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss')
and djlx = 'DH' and flbj='1'
group by trunc(flrq);
 --����
select trunc(pfrq) ,count(*) from t_dfbj where jxfs='ZP' and wcbj='1' and
 pfrq <to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss')
and pfrq >  to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
group by trunc(pfrq);
--�ϼ�
 select trunc(sjrq) , count(distinct tm) ��from t_pmsjrwb_bak where sjrq>to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
and sjrq<  to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss') 
group by trunc(sjrq);
--�����¼�
select trunc(xjrq) , count(distinct phdh) ��from T_AGV_RW_XT_BAK where xjrq>to_date('2017/2/20 00:00:00','yyyy/mm/dd hh24:mi:ss')
and xjrq<  to_date('2017/2/25 00:00:00','yyyy/mm/dd hh24:mi:ss') and jxfs='AD'
and lxbh<>'ST'
group by trunc(xjrq) ;
--�˻��¼�
select trunc(xjrq) , count(distinct phdh) ��from T_AGV_RW_XT_BAK where xjrq>to_date('2017/2/20 00:00:00','yyyy/mm/dd hh24:mi:ss')
and xjrq<  to_date('2017/2/25 00:00:00','yyyy/mm/dd hh24:mi:ss') and jxfs='AD'
and lxbh='ST'
group by trunc(xjrq) ;
 --����
select trunc(cyrq) , sum(bzjs) ��from t_dfbj where cyrq>to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
and cyrq<  to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss') 
group by trunc(cyrq) ;
 --��װ
 select trunc(jhrq) , sum(bzjs) ��from t_dfbj where jhrq>to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
and jhrq<  to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss') and ybzbj='1' 
group by trunc(jhrq) ;
--�˻��ջ�
select trunc(tlrq) , sum(ysjs)  from t_tldjhz where 
tlrq>to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
and tlrq<  to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss') and   djlx = 'XT'
group by trunc(tlrq);
--�˻�����
select trunc(tjrq),count(*) from t_khthbj where zt='5' 
and tjrq>to_date('2017/2/3 00:00:00','yyyy/mm/dd hh24:mi:ss')
and tjrq<to_date('2017/2/5 00:00:00','yyyy/mm/dd hh24:mi:ss')
group by trunc(tjrq)
