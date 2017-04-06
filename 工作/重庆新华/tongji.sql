--按店发货统计
Select  Min(Trim(d.dm)) 店名,count(distinct bjlsh) 发单数, Count(Distinct x.id) 总品种, Sum(sfcs) 总册数,
			 Sum(sfcs * dj) 总码洋, Sum(sys) 总实洋
	From t_fhmx x, t_kcsm s, t_dm d
 Where s.id = x.id And d.dh = x.dh And
			 dbrq > to_date('2016/10/18 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
			 dbrq < to_date('2016/11/21 00:00:00', 'yyyy/mm/dd hh24:mi:ss')  
			 
 Group By x.dh
 Order By 店名;
 
-- 按供货商退货统计
 
 Select  Min(Trim(g.mc)) 供应商,count(distinct bjlsh) 退单数, Count(Distinct x.id) 总品种, Sum(THCS) 总册数,
       Sum(THCS * dj) 总码洋, Sum(sys) 总实洋
  From t_hythmx x, t_kcsm s, t_ghdw g
 Where s.id = x.id And g.bh = x.hybh And
       dbrq > to_date('2016/10/18 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
       dbrq < to_date('2016/11/21 00:00:00', 'yyyy/mm/dd hh24:mi:ss')  
 Group By x.hybh
 Order By 供应商;
 
 --供货商退货明细
 select Min(Trim(g.mc)) 供应商 ,bjlsh ,count(distinct x.id) zpz,sum(thcs) zcs,sum(thcs*dj) zmy, sum(sys) zsy
 from   t_hythmx x, t_kcsm s, t_ghdw g
 Where s.id = x.id And g.bh = x.hybh And
       dbrq > to_date('2016/10/18 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
       dbrq < to_date('2016/11/21 00:00:00', 'yyyy/mm/dd hh24:mi:ss')  
 Group By x.bjlsh,x.hybh
 Order By 供应商;
 
 --音像20区
 select trim(s.sm) 书名,s.isbn ,s.tm 条码,l.hw 货位,l.kccs 册数 from t_ltkf l,t_hwdy w,t_kcsm s
where  l.hw=w.hw  and s.id=l.id and w.hqbh='20' and l.zycs=0 and l.kccs<>0
order by l.hw

 --一书多货位 
 Select Trim(s.sm) 书名, s.dj 定价, s.isbn isbn, l.hw 货位, l.kccs 库存,
       (Select q.mc From t_hqdy q Where Trim(q.bh) = substr(hw, 1, 2)) 货区
  From t_ltkf l, t_kcsm s,
       (Select id
           From t_ltkf
          Where substr(hw, 1, 2) in ('01','02','03','04','05')
          Group By id
         Having Count(*) > 1) t
 Where l.id = s.id And l.id = t.id And substr(l.hw, 1, 2) in ('01','02','03','04','05')
 Order By isbn, hw
 
 --库房下架箱号
 Select Min(xhao) 箱号, phdh 包件号, Min(xjrq) 下架日期
	From t_agv_rw_xt_bak
 Where xjrq > to_date('2016/11/15 00:00:00', 'yyyy/mm/dd hh24:mi:ss') And
			 xjrq < to_date('2016/11/17 00:00:00', 'yyyy/mm/dd hh24:mi:ss')
       and hqbh in ('01','02','03','04','05')  and jxfs='AD'
 Group By phdh
 order by 箱号
 
 
 -- 收货汇总
   Select Count(Distinct x.ghdwh) 供应商, Count(Distinct x.id) 总品种, Sum(djshsl) 总册数,
            Sum(djshsl * dj) 总码洋, Sum(sys) 总实洋, decode(nvl(zfzd,'0'),'1','直发','正常') 
       From t_dhls_jx x, t_kcsm s,t_dhdj j
      Where s.id = x.id  and j.flowid_dj=x.flowid_dj 
      and shrq>to_date('2016/10/18 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and shrq<to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and x.ywbmbh in ('000004','000002')
      group by nvl(zfzd,'0') 
      ;
    --发货汇总
      select  Count(Distinct x.dh), Count(Distinct x.id) 总品种, Sum(sfcs) 总册数,
            Sum(sfcs * dj) 总码洋, Sum(sys) 总实洋, 
             decode(nvl( b.jxfs,'AD'),'ZF','直发','正常') from t_fhmx x,t_kcsm s,t_wcbj b  where 
               dbrq>to_date('2016/10/18 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and dbrq<to_date('2016/11/21 00:00:00','yyyy/mm/dd hh24:mi:ss')
      and  s.id=x.id and b.bjlsh=x.bjlsh 
         and x.ywbmbh in ('000004','000002')  
       group by  decode(nvl( b.jxfs,'AD'),'ZF','直发','正常') 
       
