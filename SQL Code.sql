create table import(
Year date,
HSCode int,
Commodity varchar,
Revenue float
);

alter table import
alter column Year type varchar 

alter table import
alter column Revenue type decimal 

create table export(
Year varchar,
HSCode int,
Commodity varchar,
Revenue decimal
);

select * from import

select * from export

select year,
sum(case when hscode >= 1 and hscode <= 24 then revenue end) as " Agriculture & Food Products ",
sum(case when hscode >= 25 and hscode <= 38 then revenue end) as " Chemical & Allied Industries ",
sum(case when hscode >= 39 and hscode <= 43 then revenue end) as " Plastics, Rubber & Leather ",
sum(case when hscode >= 44 and hscode <= 63 then revenue end) as " Textiles & Paper Products ",
sum(case when hscode >= 64 and hscode <= 71 then revenue end) as " Footwear, Stone & Glass ",
sum(case when hscode >= 72 and hscode <= 83 then revenue end) as " Metals & Engineering Products ",
sum(case when hscode >= 84 and hscode <= 89 then revenue end) as " Precision Instruments & Miscellaneous Items"
from import
group by year
order by year

select year,
sum(case when hscode >= 1 and hscode <= 24 then revenue end) as " Agriculture & Food Products ",
sum(case when hscode >= 25 and hscode <= 38 then revenue end) as " Chemical & Allied Industries ",
sum(case when hscode >= 39 and hscode <= 43 then revenue end) as " Plastics, Rubber & Leather ",
sum(case when hscode >= 44 and hscode <= 63 then revenue end) as " Textiles & Paper Products ",
sum(case when hscode >= 64 and hscode <= 71 then revenue end) as " Footwear, Stone & Glass ",
sum(case when hscode >= 72 and hscode <= 83 then revenue end) as " Metals & Engineering Products ",
sum(case when hscode >= 84 and hscode <= 89 then revenue end) as " Precision Instruments & Miscellaneous Items"
from export
group by year
order by year

select year,
sum(case when hscode >= 1 and hscode <= 24 then revenue
	when hscode >= 25 and hscode <= 38 then revenue
	when hscode >= 39 and hscode <= 43 then revenue
	when hscode >= 44 and hscode <= 63 then revenue
	when hscode >= 64 and hscode <= 71 then revenue
	when hscode >= 72 and hscode <= 83 then revenue
	when hscode >= 84 and hscode <= 89 then revenue
	when hscode >= 90 and hscode <= 99 then revenue
	end) as "Distinction"
	from import
	group by year








