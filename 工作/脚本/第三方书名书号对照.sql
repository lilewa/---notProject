create table t_kcsm_chd as 
select id,sm,isbn,dj from t_kcsm@c_link_dbwl where cip='3TH'

create table t_kcsm_jhq_chd as 
select sm,isbn,dj,a.id,a.recedate,a.sendbmbh from t_kcsm a,(
select max(recedate) recedate,id,sendbmbh from t_kcsm   group by id,sendbmbh  ) b where a.id=b.id and a.sendbmbh=b.sendbmbh and a.recedate=b.recedate

select a.*,c.* from t_kcsm_chd a,t_books_ywbm b,t_kcsm_jhq_chd c
where a.id=b.id and b.xh_3th=c.id and b.bh_3th=c.sendbmbh  and (a.dj<>c.dj or a.isbn<>c.isbn)

select a.*,c.* from t_kcsm_chd a,t_books_ywbm b,t_kcsm_jhq_chd c
where a.id=b.id and b.xh_3th=c.id and b.bh_3th=c.sendbmbh  and  a.sm<>c.sm 
