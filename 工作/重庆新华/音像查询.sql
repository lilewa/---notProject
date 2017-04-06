select count(*) as rowcount  
                                      from (select 1 
                                             from t_kcsm a,t_kcsm_ywbm b 
                                                where a.id = b.id and b.ywbmbh = '  as_ywbmbh  ' and  a.isbn like '  as_isbn.Trim()  ' 
                                             union all 
                                             select 1 
                                                from t_jczdml@c_link_wl_sl c 
                                                  where c.ywbmbh = '  as_ywbmbh  ' 
                                                     and c.isbn like '  as_isbn.Trim()  ')

-------
Select decode(Min(lx), '0', Max(id), decode(Min(lx), '2', Max(gysspid), Max(flowid))) As id,
       Max(isbn) As isbn, Min(SM) As SM, Min(DJ) As DJ, Min(ZDQH) As ZDQH,
       Min(ZDXH) As ZDXH, Min(lx) lx, Min(ywbmbh) ywbmbh, Max(cbny) cbny,
       Max(gysspid) gysspid
  From (Select T_KCSM.id, T_KCSM.ISBN isbn, T_KCSM.SM, T_KCSM.DJ, 'ZZZZZZ' As ZDQH,
                99999 As ZDXH, '0' lx, ywbmbh, t_kcsm.cbny, t_kcsm.gysspid, '' flowid
           From T_KCSM, T_KCSM_YWBM
          Where '1' = :as_isNumber And T_KCSM.ID = T_KCSM_YWBM.ID And
                T_KCSM_YWBM.YWBMBH = :as_ywbmbh And nvl(gysspid, '%') Like :as_byc And
               ISBN  Like :as_isbn || '%'  
                  And t_kcsm.sptz = decode('1', '0', '01', '1', '02', '03')
         
         Union All
         Select '' id, isbn, sm, dj, '' zdqh, 1 zdxh, '3' lx, ywbmbh, cbny, zdqh gysspid,
                to_char(flowid_dhmx) flowid
           From tmp_dhmx, tmp_dhdj
          Where '1' = :as_isNumber And
                 ISBN   Like :as_isbn || '%'  And
                ywbmbh = :as_ywbmbh And tmp_dhdj.flowid_dj = tmp_dhmx.flowid_dj And
                nvl(zdqh, '%') Like :as_byc And tmp_dhdj.tjth = :as_sptz
         
 Group By isbn, SM, DJ
 
 
