-- Drop the table if it exists to ensure a clean setup for data import
DROP TABLE IF EXISTS coffee_sales_insights_report;

-- Create the table structure to hold coffee sales transaction data
CREATE TABLE coffee_sales_insights_report (
    coffee_name VARCHAR(50),
    cash_type VARCHAR(20),
    money NUMERIC(10, 2),
    time_of_day VARCHAR(20),
    hour_of_day INT,
    buy_time TIME,
    weekday VARCHAR(10),
    weekdaysort INT,
    month_name VARCHAR(10),
    monthsort INT,
    buy_date DATE
);