 
 
Update t_dhfl1  Set dh='000490' Where dh='200329' And flqx<>'ST';
 
 
Update t_dfbj  Set dh='000490' ,zzbh='000490' 
           Where dh='200329' And ywlx<>'ST' And ywlx<>'SC' and wcbj='1' and cyrq is null ;
           
Update t_dfbj_fylh  Set dh='000490',zzbh='000490'
           Where dh='200329' And ywlx<>'ST' And ywlx<>'SC' and FYPCH is null;

 
Update t_pxmx a Set dh='000490' Where dh='200329'
and exists (select 1 from t_dfbj where a.bjlsh=bjlsh and wcbj='1'); 

 
Update t_fybj a Set dh='000490' Where dh='200329'
and  ywlx='FH';
 
Update t_fhrwb  Set dh=p_newdh Where dh = p_olddh;

 
Update t_zprw@c_link_sl_wl Set dh=p_newdh Where dh=p_olddh;
 
t_agv_rw_xt@c_link_sl_wl

 
