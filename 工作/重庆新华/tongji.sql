--���귢��ͳ��
Select  Min(Trim(d.dm)) ����,count(distinct bjlsh) ������, Count(Distinct x.id) ��Ʒ��, Sum(sfcs) �ܲ���,
			 Sum(sfcs * dj) ������, Sum(sys) ��ʵ��
	From t_fhmx x, t_kcsm s, t_dm d
 Where s.id = x.id And d.dh = x.dh And
			 dbrq > to_date('2016/10/18 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
			 dbrq < to_date('2016/11/21 00:00:00', 'yyyy/mm/dd hh24:mi:ss')  
			 
 Group By x.dh
 Order By ����;
 
-- ���������˻�ͳ��
 
 Select  Min(Trim(g.mc)) ��Ӧ��,count(distinct bjlsh) �˵���, Count(Distinct x.id) ��Ʒ��, Sum(THCS) �ܲ���,
       Sum(THCS * dj) ������, Sum(sys) ��ʵ��
  From t_hythmx x, t_kcsm s, t_ghdw g
 Where s.id = x.id And g.bh = x.hybh And
       dbrq > to_date('2016/10/18 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
       dbrq < to_date('2016/11/21 00:00:00', 'yyyy/mm/dd hh24:mi:ss')  
 Group By x.hybh
 Order By ��Ӧ��;
 
 --�������˻���ϸ
 select Min(Trim(g.mc)) ��Ӧ�� ,bjlsh ,count(distinct x.id) zpz,sum(thcs) zcs,sum(thcs*dj) zmy, sum(sys) zsy
 from   t_hythmx x, t_kcsm s, t_ghdw g
 Where s.id = x.id And g.bh = x.hybh And
       dbrq > to_date('2016/10/18 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
       dbrq < to_date('2016/11/21 00:00:00', 'yyyy/mm/dd hh24:mi:ss')  
 Group By x.bjlsh,x.hybh
 Order By ��Ӧ��;
 
 --����20��
 select trim(s.sm) ����,s.isbn ,s.tm ����,l.hw ��λ,l.kccs ���� from t_ltkf l,t_hwdy w,t_kcsm s
where  l.hw=w.hw  and s.id=l.id and w.hqbh='20' and l.zycs=0 and l.kccs<>0
order by l.hw

 --һ����λ 
 Select Trim(s.sm) ����, s.dj ����, s.isbn isbn, l.hw ��λ, l.kccs ���,
       (Select q.mc From t_hqdy q Where Trim(q.bh) = substr(hw, 1, 2)) ����
  From t_ltkf l, t_kcsm s,
       (Select id
           From t_ltkf
          Where substr(hw, 1, 2) in ('01','02','03','04','05')
          Group By id
         Having Count(*) > 1) t
 Where l.id = s.id And l.id = t.id And substr(l.hw, 1, 2) in ('01','02','03','04','05')
 Order By isbn, hw
 
 --�ⷿ�¼����
 Select Min(xhao) ���, phdh ������, Min(xjrq) �¼�����
	From t_agv_rw_xt_bak
 Where xjrq > to_date('2016/11/15 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
			 xjrq < to_date('2016/11/17 00:00:00', 'yyyy/mm/dd hh24:mi:ss')
       and hqbh in ('01','02','03','04','05')  and jxfs='AD'
 Group By phdh
 order by ���
 
 
 -- �ջ�����
   Select Count(Distinct x.ghdwh) ��Ӧ��, Count(Distinct x.id) ��Ʒ��, Sum(djshsl) �ܲ���,
            Sum(djshsl * dj) ������, Sum(sys) ��ʵ��, decode(nvl(zfzd,'0'),'1','ֱ��','����') 
       From t_dhls_jx x, t_kcsm s,t_dhdj j
      Where s.id = x.id  and j.flowid_dj=x.flowid_dj 
      and shrq>to_date('2016/10/18 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and shrq<to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and x.ywbmbh in ('000004','000002')
      group by nvl(zfzd,'0') 
      ;
    --��������
      select  Count(Distinct x.dh), Count(Distinct x.id) ��Ʒ��, Sum(sfcs) �ܲ���,
            Sum(sfcs * dj) ������, Sum(sys) ��ʵ��, 
             decode(nvl( b.jxfs,'AD'),'ZF','ֱ��','����') from t_fhmx x,t_kcsm s,t_wcbj b  where 
               dbrq>to_date('2016/10/18 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and dbrq<to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and  s.id=x.id and b.bjlsh=x.bjlsh 
         and x.ywbmbh in ('000004','000002')  
       group by  decode(nvl( b.jxfs,'AD'),'ZF','ֱ��','����') 
       
