------报废单据中间库bug调整
select * from v_ckqk_mx_jhq where wljhcs<>sljhcs and lx='BF' order by wljhcs;

select id,bfcs,ckqkcs,xjyss,bfcs-xjyss from (
select id,bfcs,(select sum(yssl) from t_agv_rw_xt_bak where ph='96576' and id=a.id) xjyss,
(select sum(jhcs_sl) from t_ckqk_mx where id=a.id and djbh_sl=96576) ckqkcs
 from t_bfjhmx_bak a where ywpch='96576' 
) where bfcs<>ckqkcs order by xjyss;

update t_ckqk_mx set jhcs_sl=3,bmzcs_wl=1 where  id='C9787532863129001' and djbh_sl=96576;
update t_ckqk_mx set jhcs_sl=147,bmzcs_wl=47 where  id='C9787532851140018' and djbh_sl=96576;
update t_ckqk_mx set jhcs_sl=156,bmzcs_wl=44 where  id='C9787532859443002' and djbh_sl=96576;
update t_ckqk_mx set jhcs_sl=826,bmzcs_wl=37 where  id='C9787532880911002' and djbh_sl=96576;
update t_ckqk_mx set jhcs_sl=841,bmzcs_wl=21 where  id='C9787532880904002' and djbh_sl=96576;

  
------发货单据中间库bug调整
drop table t_chd;
create table t_chd as 
select * from v_ckqk_mx_jhq where wljhcs<>sljhcs and lx='FH' order by wljhcs;

select * from t_chd

select id,djsl,cgyj_kh,(select jhcs_sl from t_ckqk_mx where id=a.id and djbh_sl=100468) ckqkcs from t_fhrwb_bak a where ysdjh='100468'
                                                  	
select * from t_ckqk_mx where djbh_sl=99932  
insert into t_ckqk_mx 
values(-1218240,1218240,5,5,0,'FH',null,sysdate,0,'bmzdj','bmzdj','bmzdj','504',
'995520','D9787209094542002',60,0,13,0,0,'2001',
'995520','100468','TR_BMZDJ 2-chd','PXD91896')       

                  

select * from t_ckqk_mx where djbh_sl=100093 for update
select * from t_wl_bmzdj where id='D9787209082938001' for update
select * from t_wl_bmzdj where djbh_sl is null and senddate>sysdate-90
select * from t_kcsm  where id='D9787209048958014'
select * from t_sy_jh  where id='D9787209094542002'
select * from t_kcsm  where tm='9787209094542'
id in ('D9787209094542002','D9787209094542002','D9787209094542002')

select * from t_ltkf where id='D9787209094542002'

select * from t_ckqk_mx_bak where id='D9787209094542001'

 select "DJBH_SL","WLJHCS","SLJHCS","HJCS","BMZCS","SFCS" from (
select a.djbh_sl,sum(jhcs_sl) wljhcs,
(select zcs   from t_sl_ywzl_hz@c_link_wl_jhq where flowid_dj=to_number(a.djbh_sl)) sljhcs,sum(bmzcs_wl)+sum(fhcs_wl) hjcs
,sum(bmzcs_wl) bmzcs,sum(fhcs_wl) sfcs from t_ckqk_mx a where wjbj=0 group by a.djbh_sl) where wljhcs<>sljhcs

----根据发货明细补数据
insert into t_ckqk_mx 
select dbdh,cgyj,(select djsl from t_fhrwb_bak where flowid_fhrw=a.dbdh),0,sfcs,'FH','9997',pfrq,'0',
bjlsh,bjlsh,'',ywbmbh,dh,id,fhzk,sylx,13,sfcs*zjxs,sfcs*zjxs*fhzk/100,kfbh,dh,
(select trim(phbz) from t_fhrwb_bak where flowid_fhrw=a.dbdh),'',cgyj_kh
 from t_fhmx_chd a
