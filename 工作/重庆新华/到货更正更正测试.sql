--  登记到货
select * from t_tldjhz  t where flowid_dj=118961802;
--  补录电子单

select * from dbsl.tmp_dhdj  t where flowid_dj=118961802; 
select * from dbsl.tmp_dhmx  t where flowid_dj=118961802;
--  业务审批
--  商流定时任务传物流 pkg_purchase_order_beforehand.proc_sldjcswl_auto_1

--—  物流定时任务接收电子单和明细 proc_interface_dbsl3

select * from tmp_dhdj  t where flowid_dj=118961802; 
select * from tmp_dhmx  t where flowid_dj=118961802;

--物流定时任务接收分流指令 --PROC_SX_JSDHSJ_XTW

-- 物流拆包调度
--物流指定货位
-- 提样 PKG_SJXX.PROC_GOO_YH_YB_COMMIT
--商流录样书
--还样 PKG_SJXX.PROC_GOO_YH_YB_GETBACK

update t_kcsm set xbbz=60 where  id='123456001  ' --包装标准

--开始分流，生成到货数据
select * from t_dhdj t where flowid_dj=118961808;
select * from t_dhls_jx t where flowid_dj=118961808;
select * from t_crkls t where flowid_dj=118961808;

select * from  t_wl_sjdhsj_hz --传商流，商流生成到货数据  dbsl.proc_get_wl_dhsj


select  *from T_sl_YFSJ where flowid=118961851 --分流指令
select * from t_line_group --播种线编组
 select * from t_line_zp_hw2 --播种线货位
select * from  t_linehw_dhmx where flowid=118961807 
select  *from T_DH_YFSJ  where flowid_dhmx=118961851 --提取的分流指令

--分流 PROC_GOO_DHLR_FL_ZJS4
select * from t_pxmx 
select * from t_crkls

select * from t_zprw
select * from t_pmsjrwb
select * from t_kcsl

--PROC_GOO_DHLR_FL_ZJS_PS2—破损的书 写t_wl_zysjmx 上报商流
--商流接收破损PROC_GET_CKSJ_SX
--分流提交 proc_goo_dhlr_tj_zjs2
select * from t_dhdj t where flowid_dj=118961808; --无差异 gzbj=0
select * from t_dhls_jx t where flowid_dj=118961808; --有差异gzbj=8
select * from  t_sl_dhgzjh@c_link_wl_ex

 --物流定时任务--根据分流结果写物流更正 PROC_SX_DHGZ_XTW_DHFL
 select * from t_wl_gzjg_hz  

 -- 商流定时任务 更正PROC_GET_FHFTJT_GZJG
select * from t_dhls_jx t where flowid_dj=118961850;
select * from tmp_dhdj t where flowid_dj=118961808;
select * from tmp_dhmx_xtw t where flowid_dj=118961802;
select * from t_dhdj t where flowid_dj=118961808;

select * from dbsl.t_dhls_jx where ysdj='123'
select * from dbsl.t_dhdj t where ysdj='123'

select flowid_jcfyhg from t_dpls 
select ydhcs  from  t_jcfyhg 
