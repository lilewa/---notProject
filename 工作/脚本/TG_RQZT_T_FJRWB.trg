CREATE OR REPLACE TRIGGER "TG_RQZT_T_FJRWB"  BEFORE
INSERT
OR UPDATE
OR DELETE ON "T_FJRWB" FOR EACH ROW
declare

  v_rows number;
  pragma autonomous_transaction;

begin

   if inserting then
      -- Ϊ�������ٴ�����ֻ��������ת���洢����ֱ���γɵķ��������������ı�����״̬:
      -- ��������Ѿ���дt_wlfl_bak��t_xhdytsj_xdbʱ�������
      if :new.ywlx='ZY' then
         update t_rqbm set wz='������', zt='��ת�洢���ϼ�',
                   online_flag='0', rq=sysdate
           where bh=:new.ysxm;
      end if;
   end if;

   IF updating then
      if :new.gbczybh is not null then
         update t_user set czlx = 'THFL',czrq = sysdate where usr_id = :new.gbczybh;

      end if;


   end if;


   if deleting then
      if :old.gbczybh is not null then
         update t_user set czlx = '',czrq = null where usr_id = :old.gbczybh;

      end if;



   end if;

   commit;

 EXCEPTION

   WHEN OTHERS THEN
      rollback;

end;
/
