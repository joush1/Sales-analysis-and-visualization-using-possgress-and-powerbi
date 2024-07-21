drop table project
create table project(
"Transaction ID" integer,
"Date" text,
"Product Category" text,
"Product Name" text,
"Units Sold" integer,
"Unit Price" decimal(10,2),
"Total Revenue" decimal(10,2),
"Region" text,
"Payment Method" text
);

select to_char("Date"::date,'day') as week_days, sum("Total Revenue")  
	from project
	group by week_days

select * from project