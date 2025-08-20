import pandas as pd
import mysql.connector

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root_",
    database="projects"
)

cursor = conn.cursor()

# Load CSV
df = pd.read_csv("cleaned_car_sales.csv")  # Ensure this file exists in your working directory

# Create table if not exists
cursor.execute("""
    CREATE TABLE IF NOT EXISTS car_products (
        ID BIGINT,
        Brand VARCHAR(100),
        Model VARCHAR(100),
        Year INT,
        Color VARCHAR(50),
        Mileage FLOAT,
        Price FLOAT,
        Condition VARCHAR(50)
    )
""")

# Insert data row by row
for _, row in df.iterrows():
    cursor.execute("""
        INSERT INTO car_products (
            ID, Brand, Model, Year, Color, Mileage, Price, Condition
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        int(row['ID']),
        row['Brand'],
        row['Model'],
        int(row['Year']),
        row['Color'],
        float(row['Mileage']),
        float(row['Price']),
        row['Condition']
    ))

# Commit and close
conn.commit()
print("Car product data imported successfully into MySQL.")
conn.close()
