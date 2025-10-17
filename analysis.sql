-- Business Question 1: Which coffee types generate the highest revenue and transaction count?
SELECT
    coffee_name,
    SUM(money) AS total_revenue,
    COUNT(money) AS count_of_transactions,
    ROUND(AVG(money), 2) AS avg_cost
FROM
    coffee_sales_insights_report
GROUP BY
    coffee_name
ORDER BY
    total_revenue DESC;
-- Conclusion: Latte is the top-performing product, generating the highest revenue of $26,875.30 from 757 transactions, with an average spend of $35.50. 
-- "Americano with Milk" has the highest transaction count (809) but generates less revenue due to a lower average cost.



-- Business Question 2: What is the average spend per coffee type?
-- (Derived from the query above)
-- Conclusion: The analysis shows that Hot Chocolate commands the highest average spend per transaction at $35.99, while Espresso has the lowest at $20.85.


-- Business Question 3: Are there price differences across time or customer preference shifts by season?
SELECT
    monthsort,
    COUNT(coffee_name) AS total_orders,
    ROUND(AVG(money), 2) AS avg_cost
FROM
    coffee_sales_insights_report
GROUP BY
    monthsort
ORDER BY
    monthsort;
-- Conclusion: The analysis indicates that sales volume is primarily driven by price fluctuations rather than seasonality. There is a strong inverse relationship between 
-- the average cost and the number of orders. For example, a price increase in the 4th month led to a significant 76% drop in orders, while a price reduction in the 7th 
-- month spurred a 12% rise in orders. This demonstrates high price sensitivity among customers.


-- Business Question 4: What are the peak hours of the day for sales?
WITH hourly_orders AS (
    SELECT
        buy_date,
        hour_of_day,
        COUNT(*) AS total_orders
    FROM
        coffee_sales_insights_report
    GROUP BY
        buy_date, hour_of_day
)
SELECT
    hour_of_day,
    ROUND(AVG(total_orders), 2) AS avg_orders_per_hour
FROM
    hourly_orders
GROUP BY
    hour_of_day
ORDER BY
    avg_orders_per_hour DESC;
-- Conclusion: The peak time for sales is 9 PM (21:00), with an average of 2 orders placed during this hour, indicating strong evening demand.


-- Business Question 5: Which day of the week sees the highest footfall and revenue?
SELECT
    weekday,
    COUNT(money) AS total_orders,
    SUM(money) AS total_revenue
FROM
    coffee_sales_insights_report
GROUP BY
    weekday, weekdaysort
ORDER BY
    weekdaysort ASC;
-- Conclusion: Tuesday is the most profitable day, recording the highest footfall with 572 transactions and generating the highest total revenue of $18,168.38.


-- Business Question 6: Do Afternoon purchases differ in average spend vs Morning or Evening?
SELECT
    time_of_day,
    ROUND(AVG(money), 2) AS avg_spend,
    SUM(money) AS total_revenue
FROM
    coffee_sales_insights_report
GROUP BY
    time_of_day
ORDER BY
    avg_spend DESC;
-- Conclusion: Yes, average spend differs by time of day. The Night period sees the highest average spend at $32.89, compared to the Afternoon ($31.64) and the 
-- Morning ($30.42). The highest total revenue is also generated at Night.


-- Business Question 7: Do holidays or specific seasonal periods affect purchasing volume?
-- Conclusion: The analysis indicates that purchasing volume is not significantly affected by seasonal periods. Instead, price hikes are the key factor that directly 
-- leads to a decrease in purchasing volume.


-- Business Question 8: Identify best-selling coffee × time combinations.
SELECT
    time_of_day,
    coffee_name,
    COUNT(*) AS total_orders
FROM
    coffee_sales_insights_report
GROUP BY
    time_of_day,
    coffee_name
ORDER BY
    time_of_day,
    total_orders DESC;
-- Conclusion: Customer preferences change throughout the day. "Americano with Milk" is the top seller in the Morning (331 sales), while Latte is the preferred choice 
-- in both the Afternoon (270 sales) and Night (272 sales).


-- Business Question 9: Does pricing influence buying behavior?
-- Conclusion: Yes, pricing directly influences buying behavior. The data consistently shows that when the price is raised, the number of orders decreases, and when the 
-- price is lowered, orders begin to rise again.


-- Business Question 10: Based on demand patterns, what time-based promotions would you recommend?
-- Conclusion: Promotional strategies should focus on diversifying customer choice rather than discounting already popular items. The recommendation is to promote coffees 
-- *other than* "Americano with Milk" in the morning, and alternatives to "Latte" in the afternoon and night, encouraging customers to try new products.


-- Business Question 11: Should the company introduce dynamic pricing?
-- Conclusion: Yes, the company should introduce dynamic pricing, but through customer-centric strategies like **combo offers**. These combos should pair different 
-- coffee types and sizes to encourage experimentation. This approach can increase order value while providing perceived value to the customer, based on their preferences 
-- rather than just historical sales data.


-- Business Question 12: Are there cross-selling opportunities?
-- Conclusion: It is suggested to first apply dynamic pricing with combos. Based on the success of these offers, the company can then move forward with cross-selling 
-- bakery items, potentially pairing them with specific combos or coffees to test customer interest.


-- Business Question 13: Would you recommend expanding menu categories?
-- Conclusion: Yes, expanding the menu to include more **flavored options and cold brews** is recommended. The new offerings should be introduced seasonally—more hot 
-- flavors in the winter and more cold flavors in the summer. It is also important to retain the classic flavors to cater to the existing customer base.