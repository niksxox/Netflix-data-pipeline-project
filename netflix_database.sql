create database if not exists netflix_db;
use netflix_db;

drop table if exists netflix;
create table netflix (
    title varchar(255),
    director varchar(255),
    country varchar(500),
    release_year int,
    type varchar(50)
);

select type, count(*) from netflix group by type;

-- Removed duplicate: select country, count(*) from netflix group by country order by count(*) desc;

select release_year, count(*)
from netflix group by release_year;
SHOW TABLES;

select * from netflix limit 10;
select country, count(*) from netflix group by country order by count(*) desc;
select release_year, count(*) from netflix;
select release_year, count(*) from netflix group by release_year;
alter table netflix add column inserted_at timestamp default current_timestamp;

select release_year, count(*) from netflix where type = 'Movie' group by release_year order by release_year;
select country, release_year, 
count(*) 
from netflix
where type = 'Movie'
group by country, release_year 
order by release_year;
