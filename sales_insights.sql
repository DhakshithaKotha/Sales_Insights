SELECT * FROM customers; #Show all customer records
SELECT count(*) FROM customers; # Show total number of customers
SELECT * FROM transactions where market_code='Mark001'; # Show transactions for Chennai market (market code for chennai is Mark001)
SELECT distinct product_code FROM transactions where market_code='Mark001'; # Show distinct product codes that were sold in chennai
SELECT * from transactions where currency="USD"; #  Show transactions where currency is US dollars
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020; # Show transactions in 2020 join by date table
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r"; #  Show total revenue in year 2020
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r"); # Show total revenue in year 2020, January Month
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001"; #  Show total revenue in year 2020 in Chennai
