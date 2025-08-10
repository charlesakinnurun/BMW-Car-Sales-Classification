## Introduction
The dataset, named BMW_Car_Sales_Classification.csv, contains detailed information on BMW car sales. It includes key vehicle specifications such as the model, year, fuel type, and engine size, as well as sales metrics like price, mileage, and sales volume. The data also classifies sales into categories (e.g., High or Low), making it suitable for sales analysis and predictive modeling.
### Database Creation
```sql
CREATE SCHEMA `bmwsales`;
```
### Table Creation
```sql
CREATE TABLE bmw(
    model VARCHAR(255),
    year INT,
    region VARCHAR(255),
    color VARCHAR(255),
    fuel_type VARCHAR(255),
    transmission VARCHAR(255),
    engine_size_l FLOAT,
    mileage_km INT,
    price_usd INT, 
    sales_volume INT,
    sales_classification VARCHAR(255)
);
```
## Analysis
Here are 10 analytical questions that you can solve using SQL:
1. Retrieve all data for cars with 'High' sales classification.
2. Find the average price (USD) of BMW cars for each Fuel_Type.
3. Count the number of cars sold in each Region.
4. List all unique Model names available in the dataset.
5. Identify cars that have a Mileage_KM greater than 150000 and a Price_USD less than 50000.
6. Determine the maximum Sales_Volume for each Transmission type.
7. Find the total Sales_Volume for cars manufactured in Year 2022.
8. List the Model and Engine_Size_L for cars with an Engine_Size_L between 2.0 and 3.0 (inclusive).
9. Count the number of 'Petrol' cars with 'Automatic' Transmission.
10. Retrieve the Model, Year, and Price_USD of the top 5 most expensive cars.
#### Retrieve all data for cars with 'High' sales classification
```sql
SELECT * FROM bmw
WHERE sales_classification = "High";
```
#### Find the average price (USD) of BMW cars for each Fuel_Type.
```sql
SELECT fuel_type,AVG(price_usd) AS avg_price
FROM bmw
GROUP BY fuel_type;
```
#### Count the number of cars sold in each Region.
```sql
SELECT region,COUNT(*) AS number_of_cars
FROM bmw
GROUP BY region;
```
#### List all unique Model names available in the dataset.
```sql
SELECT DISTINCT model FROM bmw;
```
#### Identify cars that have a Mileage_KM greater than 150000 and a Price_USD less than 50000.
```sql
SELECT model,year,mileage_km,price_usd
FROM bmw
WHERE mileage_km > 150000 AND price_usd < 50000;
```
#### Determine the maximum Sales_Volume for each Transmission type.
```sql
SELECT transmission,MAX(sales_volume) AS max_sales_volume
FROM bmw
GROUP BY transmission;
```
#### Find the total Sales_Volume for cars manufactured in Year 2022.
```sql
SELECT SUM(sales_volume) AS total_sales_2022
FROM bmw
WHERE year = "2022";
```
#### List the Model and Engine_Size_L for cars with an Engine_Size_L between 2.0 and 3.0 (inclusive).
```sql
SELECT model,engine_size_l
FROM bmw
WHERE engine_size_l BETWEEN 2.0 AND 3.0;
```
#### Count the number of 'Petrol' cars with 'Automatic' Transmission.
```sql
SELECT COUNT(*) AS petrol_automatic_cars
FROM bmw
WHERE fuel_type = "Petrol" AND transmission = "Automatic";
```
#### Retrieve the Model, Year, and Price_USD of the top 5 most expensive cars.
```sql
SELECT model,year,price_usd
FROM bmw
ORDER BY price_usd DESC
LIMIT 5;
```
