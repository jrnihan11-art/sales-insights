use sales;

#--To Analyze the Tables
select * from customers;
select * from markets;
select * from products;
select * from transactions;
select * from date;

#--Checked any null values present in customers table:
SELECT * FROM customers where customer_code is null;
SELECT * FROM customers where custmer_name is null;
SELECT * FROM customers where customer_type is null;

#--Checked any null values present in date table:
SELECT * FROM date where date is null;
SELECT * FROM date where cy_date is null;
SELECT * FROM date where year is null;
SELECT * FROM date where month_name is null;

#--droped column from date table because date already present:
alter table date drop column date_yy_mmm;

#--deleted rows from markets table because market is from outside of India:
delete from markets where zone is null;

#--Checked any null values present in products table:
SELECT * FROM products where product_code is null;
SELECT * FROM products where product_type is null;

#--Checked any null values present in transactions table:
SELECT * FROM transactions where product_code is null;
SELECT * FROM transactions where customer_code is null;
SELECT * FROM transactions where market_code is null;
SELECT * FROM transactions where order_date is null;
SELECT * FROM transactions where sales_qty is null;
SELECT * FROM transactions where sales_amount is null;
SELECT * FROM transactions where currency is null;

#-- deleted improper values from transactions table:
delete from transactions where sales_amount <=0;

#--Updated sales_amount from USD to INR for the calculation of total sales_amount from transaction table:
update transactions set sales_amount = sales_amount*92 where substr(currency,1,3)='USD';

#--updated currency USD to INR from transaction table:
update transactions set currency = 'INR' where substr(currency,1,3)='USD';












