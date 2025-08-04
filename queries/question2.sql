SELECT fuel_type,AVG(price_usd) AS avg_price
FROM bmw
GROUP BY fuel_type;