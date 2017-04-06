 string sqlStr = "update t_dfbj set jhpch='',fyjhpc='',fyjhrq = null,fyjhpc1='' where jhpch='" + yfjhpch + "'";
           
           
    sqlStr = "update t_dfbj_fylh set flag='0',fypch='',tp_czy='' where fypch='" + yfjhpch + "'";

    
 select * from t_dfbj_fylh ;
 
 select * from t_fybj 
 
 delete t_fybj;
 delete t_fyjhpc;
 insert into t_fybj
   (bjlsh,     ywlx, dh,   ywbmbh)
  select 
   bjlsh, ywlx, dh, ywbmbh from t_dfbj_fylh where fypch is null; 
 
 create table t_dfbj_fylh170117 as select * from t_dfbj_fylh
 delete t_dfbj_fylh;
  
 PROC_SX_DFBJ_JJ_XTW_TP
  Insert Into t_dfbj_fylh
            (ywpch, tph, js, flag, hw, ywlx, czybh, rq, ZL, DH, ZZBH, YH, BZJS, ZZL,
             YWBMBH, CYBH, ZZBJ, fyfx, bjlsh,gkh)
        Values
            (c1.ywpc, c1.dh, c1.bzjs, '0', c1.dh, c1.ywlx, p_rfczybh, Sysdate, c1.zzl,
             c1.DH,  c1.ZZBH, c1.YH,
             c1.BZJS, c1.ZZL, c1.YWBMBH, c1.FHBMBH, NVL(c1.AGVBJ, '0'),
             null, c1.bjlsh,decode(c1.gkh,'JT','JT',null));
             
            insert into t_fybj
   (bjlsh,     ywlx, dh,   ywbmbh)
   values(c1.bjlsh,c1.ywlx, c1.dh,c1.YWBMBH )  ;
           
  PROC_SX_DFBJ_JJ_XTW
  Insert Into t_dfbj_fylh
            (ywpch, tph, js, flag, hw, ywlx, czybh, rq, ZL, DH, ZZBH, YH, BZJS, ZZL,
             YWBMBH, CYBH, ZZBJ, fyfx, bjlsh,gkh)
        Values
            (v_dfbj.ywpc, v_dfbj.dh, v_dfbj.bzjs, '0', v_dfbj.dh, v_dfbj.ywlx, p_rfczybh, Sysdate, v_dfbj.zzl,
             v_dfbj.DH,  v_dfbj.ZZBH, v_dfbj.YH,
             v_dfbj.BZJS, v_dfbj.ZZL, v_dfbj.YWBMBH, v_dfbj.FHBMBH, NVL(v_dfbj.AGVBJ, '0'),
             null, v_dfbj.bjlsh,decode(v_dfbj.gkh,'JT','JT',null));
             insert into t_fybj
   (bjlsh,     ywlx, dh,   ywbmbh)
   values(v_dfbj.bjlsh,v_dfbj.ywlx, v_dfbj.dh,v_dfbj.YWBMBH );
