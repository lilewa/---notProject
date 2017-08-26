  If Nvl(v_kcsm_sl, 0) = 0 Then
            Select sl Into v_kcsm_sl
            From t_lb
            Where Exists(Select 1 From t_allfl Where blbh = t_lb.bh And flbh = v_tmp.fl);
        End If;



select * from t_pxmx where bjlsh='1783275';
select * from t_dhdj where zdjspch='1783275';
select sl from t_kcsm@c_link_wl_sl where id in(
select id from t_dhls_jx where flowid_dj ='132899287');

select * from tmp_dhmx_xtw where flowid_dj ='132899287';


  Select  *   From t_kcsm_ywbm@c_link_wl_sl 
                   Where id='9787888385559002  ' And ywbmbh='000003' 9787888385559002  ;
                   
    
  select * from t_dhls_jx where id='9787888385559002';
  
  
  select * from tmp_dhmx@c_link_wl_sl where flowid_dj ='132899287';
        
        
select sl from t_kcsm@c_link_wl_sl where id in(
select id from t_dhls_jx where flowid_dj ='132899287');


 select p.sl,k.sl from t_pxmx p ,t_kcsm@c_link_wl_sl k where bjlsh='1783275' and p.id=k.id
