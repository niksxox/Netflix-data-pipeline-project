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

select country, count(*)
from netflix
group by country
order by count(*) desc;

select release_year, count(*)
from netflix group by release_year;