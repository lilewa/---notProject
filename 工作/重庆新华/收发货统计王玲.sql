--�ջ�
select count(distinct x.ghdwh) ������,count(distinct x.id) ��Ʒ��,sum(djshsl) �ܲ���
,sum(dj*djshsl) ������,sum(sys) ��ʵ��, decode(zfzd, '1', 'ֱ��', '����') ��ʽ
from t_dhls_jx x,t_kcsm s,
t_dhdj j where x.flowid_dj=j.flowid_dj and x.id=s.id
AND shrq> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  shrq< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
and x.ywbmbh in('000002','000004')
group by  decode(zfzd, '1', 'ֱ��', '����')  ;

 --����
 select count(distinct x.dh) �ͻ�,count(distinct x.id) ��Ʒ��,sum(sfcs) �ܲ���
,sum(dj*sfcs) ������,sum(sys) ��ʵ��, decode(x.zl, '1', 'ֱ��', '����') ��ʽ from t_fhmx  x,t_kcsm s 
 where x.id=s.id 
 AND dbrq> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  dbrq< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
  and x.ywbmbh in('000001','000005')
group by  decode(x.zl, '1', 'ֱ��', '����')  ;

-- ����
select count(distinct x.hybh) �ͻ�,count(distinct x.id) ��Ʒ��,sum(thcs) �ܲ���
,sum(dj*thcs) ������,sum(sys) ��ʵ�� from t_hythmx  x,t_kcsm s 
 where x.id=s.id 
 AND dbrq> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  dbrq< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
  and x.ywbmbh in('000002','000004')
--����

select count(distinct x.dh) �ͻ�,count(distinct x.id) ��Ʒ��,sum(thcs) �ܲ���
,sum(dj*thcs) ������,sum(sys) ��ʵ�� from t_khthmx  x,t_kcsm s 
 where x.id=s.id 
 AND lrrq1> to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
and  lrrq1< to_date('2016/12/29 00:00:00','yyyy/mm/dd hh24:mi:ss')
  and x.ywbmbh in('000001','000005')
