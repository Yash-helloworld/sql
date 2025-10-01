-- day 2
use world;
show tables;
select * from country;
select distinct continent from country;

select * from country;
select name, sum(population) from country;
select sum(population) as maximum_populatiion from country ;

select max(population) as max_populationn from country;
select * from country
where population = 1277558000;


select min(population) as min_population from country;



select * from country where population = 0;


select count(population) as total_countries from country;


select sum(population) as total_population,
avg(population) as aaavp from country;

select continent, sum(population) as total_population from country where continent = "North America";

select continent, count(*) as country_count
from country
group by continent
having country_count > 30;

select * from country
where indepyear is null;


select * from country
where indepyear is not null;