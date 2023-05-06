--query 1--
select * from owners left join vehicles on owner_id = owners.id;
--query 2--
select first_name, last_name, count(*) as count from owners join vehicles 
on owner_id=owners.id group by first_name, last_name order by count asc;
--query 3--
select first_name, last_name, round(avg(price)) as average_price, count(owner_id) from owners o
join vehicles v on o.id = v.owner_id group by (first_name, last_name) having count(owner_id) > 1
and round(avg(price)) > 10000 order by first_name desc;