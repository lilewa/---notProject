select * from tmp_dhdj a where not exists (select 1 from t_tldjhz b where b.flowid_tldjhz=a.flowid_tldjhz)
  98038642 97038552
select * from t_tldjhz where ysdj='799363' and yh='99363' for update
select * from t_tldjmx where flowid_tldjhz='98038642' for update
select * from tmp_dhmx where tybj='1'
select * from tmp_dhdj where flowid_dj='97976730'
select * from t_tldjhz where flowid_tldjhz='97972990' or flowid_tldjhz='97038552' for update
select * from t_tldjhz_cbr where flowid_tldjhz='97972990' or flowid_tldjhz='97038552' for update
