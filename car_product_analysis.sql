# Data Analyst SQL Queries

# Overview of Car Inventory
SELECT 
    COUNT(*) AS total_cars,
    AVG(Mileage) AS average_mileage,
    AVG(Price) AS average_price
FROM car_products;

# Distribution of Cars by Brand
SELECT 
    Brand,
    COUNT(*) AS car_count
FROM car_products
GROUP BY Brand
ORDER BY car_count DESC;

# Average Price by Brand and Model
SELECT 
    Brand,
    Model,
    AVG(Price) AS average_price
FROM car_products
GROUP BY Brand, Model
ORDER BY average_price DESC;

# Mileage Statistics by Car Condition
SELECT 
    Condition,
    AVG(Mileage) AS average_mileage,
    MIN(Mileage) AS min_mileage,
    MAX(Mileage) AS max_mileage
FROM car_products
GROUP BY Condition;

# Price Range by Year
SELECT 
    Year,
    MIN(Price) AS min_price,
    MAX(Price) AS max_price,
    AVG(Price) AS average_price
FROM car_products
GROUP BY Year
ORDER BY Year DESC;

# Color Popularity
SELECT 
    Color,
    COUNT(*) AS color_count
FROM car_products
GROUP BY Color
ORDER BY color_count DESC;

# Business Analyst SQL Queries

# Total Inventory Value by Brand
SELECT 
    Brand,
    SUM(Price) AS total_inventory_value
FROM car_products
GROUP BY Brand
ORDER BY total_inventory_value DESC;

# Condition-Based Pricing Strategy
SELECT 
    Condition,
    COUNT(*) AS total_cars,
    AVG(Price) AS average_price
FROM car_products
GROUP BY Condition
ORDER BY average_price DESC;

# Yearly Inventory Distribution
SELECT 
    Year,
    COUNT(*) AS cars_available
FROM car_products
GROUP BY Year
ORDER BY Year DESC;

# High-Value Models
SELECT 
    Brand,
    Model,
    AVG(Price) AS average_price,
    COUNT(*) AS listings
FROM car_products
GROUP BY Brand, Model
HAVING AVG(Price) > 1000000
ORDER BY average_price DESC;

# Price Segmentation by Mileage Band
SELECT 
    CASE 
        WHEN Mileage < 10000 THEN 'Under 10K'
        WHEN Mileage BETWEEN 10000 AND 50000 THEN '10K-50K'
        WHEN Mileage BETWEEN 50001 AND 100000 THEN '50K-100K'
        ELSE 'Over 100K'
    END AS mileage_band,
    COUNT(*) AS car_count,
    AVG(Price) AS average_price
FROM car_products
GROUP BY mileage_band
ORDER BY average_price DESC;

# Brand and Condition Mix
SELECT 
    Brand,
    Condition,
    COUNT(*) AS count
FROM car_products
GROUP BY Brand, Condition
ORDER BY count DESC;
