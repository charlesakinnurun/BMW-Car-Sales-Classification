SELECT transmission,MAX(sales_volume) AS max_sales_volume
FROM bmw
GROUP BY transmission;