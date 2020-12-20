
select dimension,time, count(inlcuded) from Data where inlcuded=1 group by time, dimension order by time