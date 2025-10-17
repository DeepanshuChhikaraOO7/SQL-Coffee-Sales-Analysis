-- This query performs a comprehensive check for NULL values across all columns
-- in the coffee_sales_insights_report table to verify data completeness.
-- A result of 0 for each column indicates that no data is missing.

SELECT
    COUNT(*) FILTER (WHERE coffee_name IS NULL) AS name_null_count,
    COUNT(*) FILTER (WHERE cash_type IS NULL) AS cash_type_null_count,
    COUNT(*) FILTER (WHERE money IS NULL) AS money_null_count,
    COUNT(*) FILTER (WHERE time_of_day IS NULL) AS time_of_day_null_count,
    COUNT(*) FILTER (WHERE hour_of_day IS NULL) AS hour_of_day_null_count,
    COUNT(*) FILTER (WHERE weekday IS NULL) AS weekday_null_count,
    COUNT(*) FILTER (WHERE weekdaysort IS NULL) AS weekdaysort_null_count,
    COUNT(*) FILTER (WHERE month_name IS NULL) AS month_name_null_count,
    COUNT(*) FILTER (WHERE monthsort IS NULL) AS monthsort_null_count,
    COUNT(*) FILTER (WHERE buy_time IS NULL) AS buy_time_null_count,
    COUNT(*) FILTER (WHERE buy_date IS NULL) AS buy_date_null_count
FROM
    coffee_sales_insights_report;

-- Conclusion: The data integrity check confirms that there are 0 null values across all columns.
-- The dataset is clean and complete, making it ready for analysis.