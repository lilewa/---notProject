  Insert Into t_wl_bmzdj
        (ysdjh, ywbmbh, dh, ckbh, rkbh, id, cs, sjkcs, qsclfs, lx, FLOWID, bz, receflag,
         sendbmbh, senddate, recebmbh, zk, djbh_sl)
        Select cgyj, ywbmbh, dh, kfbh, pfczybh, id, djsl, 0, Trim(qsclfs), 'FH',
               flowid_fhrw, '调度时库存不足', '0', cybh, Sysdate, ywbmbh, fhzk, ysdjh
          From t_pf_temp_QS_XTW
         Where PFCZYBH = '0001';
    v_bj := -17;
    Delete From t_pf_temp_qs_xtw Where pfczybh = '0001';
    
    select * from t_allfl where flbh= '0703';
    select * from t_hqfldz 
    
    select * from t_fhrwb1027;
    
    
      Insert Into t_pf_temp_QS_XTW
                        (flowid_fhrw, ysdjh, dh, id, kfbh, ywbmbh, cybh, dbbz, xbbz, rq,
                         djsl, fhzk, sylx, zjxs, djly, qsts, phbz, fyfsh, fhfs, pfczybh,
                         dj, zrcybh, cgyj, sdhrq, zl, FHYXJ, XSZQ, cgyj_kh, thl, jllx,
                         QSCLFS, xz, PMSJRWB, DHFL, LTKF, pk)
                        Select --p_flowid_fhrwb_new
                         all_flowid.Nextval, ysdjh, dh, id, kfbh, ywbmbh, cybh, dbbz, xbbz,
                         rq, djsl, fhzk, sylx, zjxs, djly, qsts, phbz, fyfsh, fhfs,
                         '0001', dj, zrcybh, cgyj, sdhrq, zl, FHYXJ, XSZQ, cgyj_kh, thl,
                         jllx, QSCLFS, 0, 0, 0, 0, pk
                          From haha2
                         Where flowid_fhrw = c1.flowid_fhrw;
                         
             
        Insert Into haha2
            (FLOWID_FHRW, YSDJH, DH, ID, KFBH, YWBMBH, CYBH, DBBZ, XBBZ, DJSL, FHZK, SYLX,
             ZJXS, DJLY, QSTS, FHFS, PFCZYBH, FYFSH, DJ, cgyj, sdhrq, xszq, QSCLFS, fhyxj,
             cgyj_kh, thl, PHBZ, Xz, yx, rq, pk)
             Select a.FLOWID_FHRW, a.YSDJH, a.DH, a.ID, a.KFBH, a.YWBMBH, a.CYBH, nvl(a.DBBZ,1),
                   nvl(a.XBBZ,1), a.DJSL, a.FHZK, a.SYLX, a.ZJXS, a.DJLY, a.QSTS, a.FHFS, '0001',
                   a.FYFSH, a.DJ, a.cgyj, a.sdhrq, a.xszq, a.qsclfs, a.fhyxj, a.cgyj_kh,
                   a.thl, a.PHBZ, 0,
                   Case When a.dbbz * a.xbbz >= 1 Then
                        '0'
                       Else
                        '1'
                   End, rq, a.FLOWID_FHRW
              From t_fhrwb1027 a, t_kcsm b
             Where a.id = b.id  
             
             
