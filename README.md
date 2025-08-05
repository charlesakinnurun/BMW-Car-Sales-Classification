# Introduction
![BMW](assets/bmw.jpg)
This dataset, named BMW_Car_Sales_Classification.csv, contains detailed information on BMW car sales. It includes key vehicle specifications such as the model, year, fuel type, and engine size, as well as sales metrics like price, mileage, and sales volume. The data also classifies sales into categories (e.g., High or Low), making it suitable for sales analysis and predictive modeling.
***
🔍 SQL queries and Python script? Check them out [here](/queries/):
# Background
Driven by the need to explore BMW car sales patterns and outcomes, this analysis leverages a comprehensive dataset containing key vehicle and sales metrics. The goal is to identify key factors influencing sales classification, uncover trends in indicators such as model, year, region, and price, and generate actionable insights to support better business outcomes for sales and marketing.
# Questions
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
# Tools I Used
For my deep dive into the digital advertising strategies, I harnessed the power of several key tools:
- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **MySQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** My go-to for database management and executing SQL queries.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.
# Database Creation
```sql
CREATE SCHEMA `bmwsales`;
```
# Table Creation
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
# Analysis
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
#### Identify cars that have a Mileage_KM greater than 150000 and a Price_USD less than 50000.
```sql
SELECT model,engine_size_l
FROM bmw
WHERE engine_size_l BETWEEN 2.0 AND 3.0;
```
#### List all unique Model names available in the dataset.
```sql
SELECT DISTINCT model FROM bmw;
```
The remaining queries are provided below.
[Queries](/queries/)
# What I Learned
Throughout this journey, I’ve sharpened my data analysis skills by diving deep into maternal health data using SQL:
- **🧩 Powerful Data Handling:** Gained hands-on experience with advanced data cleaning and transformation techniques—filtering and reshaping the maternal health dataset for better clarity and usability.
- **📊 Insightful Aggregation:** Used groupby() and aggregation functions like mean(), count(), and sum() to uncover patterns across health indicators such as blood pressure, sugar levels, and heart rate. Also explored pivot_table to generate structured summaries of health risk categories.
- **💡 Data-Driven Insights:** Enhanced my analytical thinking by translating real-world health questions into actionable insights through targeted Pandas operations, supporting better understanding of maternal risk factors.
# Conclusion
This project, through the analysis of BMW car sales data, has offered meaningful insights into the factors affecting sales classification. The outcomes of this analysis help identify key sales indicators and patterns that influence classification levels for different car models. Business analysts and marketers can gain a clearer understanding of sales dynamics by focusing on impactful metrics such as Model, Year, Region, and Price_USD. This exploration underscores the importance of continuous sales data analysis and adaptability in identifying underperforming models and supporting informed business decision-making.
