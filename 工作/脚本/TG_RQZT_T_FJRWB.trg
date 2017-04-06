CREATE OR REPLACE TRIGGER "TG_RQZT_T_FJRWB"  BEFORE
INSERT
OR UPDATE
OR DELETE ON "T_FJRWB" FOR EACH ROW
declare

  v_rows number;
  pragma autonomous_transaction;

begin

   if inserting then
      -- 为尽量减少触发，只对样本室转往存储区而直接形成的分流任务，做触发改变容器状态:
      -- 其它情况已经在写t_wlfl_bak或t_xhdytsj_xdb时处理过了
      if :new.ywlx='ZY' then
         update t_rqbm set wz='样本室', zt='待转存储区上架',
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
