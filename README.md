# Coffee Shop Sales & Customer Behavior Analysis

## Project Brief
sourse - [coffee_sales_insights_report](https://www.kaggle.com/datasets/sidraaazam/coffee-sales-insights-report)

This project provides a comprehensive analysis of sales data from a coffee shop, aiming to uncover key business insights and drive strategic decision-making. As a Data Analyst, the primary goal is to analyze transaction data to understand revenue drivers, customer purchasing patterns, and the impact of pricing on sales volume. The final output is a set of data-backed recommendations for optimizing pricing, promotions, and menu offerings.

This repository contains the complete SQL analysis that transforms raw sales data into actionable business intelligence.

---

## 🎯 Business Objectives

The analysis is structured to answer critical business questions regarding sales performance, customer behavior, and operational efficiency:

#### 1️⃣ Sales Performance & Revenue Analysis
- Which coffee types generate the highest revenue and transaction volume?
- What is the average spend per coffee type?
- Which day of the week achieves the highest footfall and revenue?

#### 2️⃣ Customer Behavior & Temporal Patterns
- What are the peak sales hours of the day?
- Do purchasing patterns (e.g., average spend) differ between Morning, Afternoon, and Night?
- Which months exhibit growth or decline in sales, and what are the underlying drivers?
- Identify the best-selling coffee products for different times of the day.

#### 3️⃣ Pricing Strategy & Impact
- Are there observable price differences across time, and do they correlate with customer demand?
- Does pricing directly influence customer buying behavior, or are preferences inelastic to cost?

#### 4️⃣ Strategic Recommendations
- Based on demand patterns, what time-based promotions should be considered?
- Should the company implement dynamic pricing strategies?
- Are there opportunities for cross-selling or menu expansion?

---

## ⚙️ Analytical Workflow

The insights in this project were derived from a single, comprehensive SQL script. The workflow involved:
1.  **Data Aggregation**: Grouping transactional data by various dimensions such as coffee type, time of day, day of the week, and month.
2.  **Metric Calculation**: Computing key performance indicators (KPIs) like total revenue, transaction count, and average spend.
3.  **Pattern Identification**: Analyzing trends, peaks, and troughs in sales data to uncover actionable insights.

The complete set of queries can be found in the `analysis.sql` file in this repository.

---

## 📊 Key Findings & Analysis

#### 1. Top Revenue-Generating Coffee Types
The analysis reveals that **Latte** is the highest revenue-generating product, totaling **$26,875.30** across 757 transactions. While "Americano with Milk" has more transactions (809), its lower average cost results in less overall revenue. Hot Chocolate commands the highest average spend per transaction ($35.99), while Espresso has the lowest ($20.85).

| Coffee Name         | Total Revenue | Transactions | Avg. Cost |
| ------------------- | ------------- | ------------ | --------- |
| Latte               | $26,875.30    | 757          | $35.50    |
| Americano with Milk | $24,751.12    | 809          | $30.59    |
| Cappuccino          | $17,439.14    | 486          | $35.88    |
| ...                 | ...           | ...          | ...       |
| Espresso            | $2,690.28     | 129          | $20.85    |

#### 2. Monthly Sales Trends and Price Sensitivity
The data indicates that sales volume is not primarily driven by seasonality, but rather by **price fluctuations**. A strong inverse correlation exists between average cost and the number of orders. For example, a price increase in the 4th month led to a sharp 76% decline in orders. Conversely, when prices were lowered in the 7th month, order volume began to recover. This pattern confirms that customers are highly sensitive to pricing.

| Month No. | Total Orders | Avg. Cost |
| :-------: | :----------: | :-------: |
| 3         | 494          | $32.17    |
| 4         | 168          | $34.05    |
| ...       | ...          | ...       |
| 7         | 237          | $29.18    |

#### 3. Peak Sales Periods
- **Peak Hour**: The busiest hour of the day is **9 PM (21:00)**, showing a strong demand in the evening.
- **Peak Day**: **Tuesday** is the most profitable day of the week, recording the highest footfall (572 transactions) and revenue ($18,168.38).
- **Time of Day Analysis**: The **Night** period generates the highest average spend per transaction (**$32.89**), followed by the Afternoon ($31.64) and Morning ($30.42).

#### 4. Best-Selling Products by Time of Day
Customer preferences shift distinctly throughout the day, revealing opportunities for targeted marketing:
- **Morning**: **Americano with Milk** is the top seller with 331 sales.
- **Afternoon**: **Latte** becomes the preferred choice with 270 sales.
- **Night**: **Latte** continues its dominance with 272 sales.

---

## 💡 Strategic Recommendations

#### 1. Implement Time-Based Promotions to Drive Product Discovery
Instead of discounting popular items, promotions should encourage customers to try a wider variety of products.
- **Recommendation**: During the morning rush, offer promotions on drinks *other than* "Americano with Milk." In the afternoon and evening, when Latte is the clear favorite, create offers that feature other coffee types to broaden customer palates and diversify sales.

#### 2. Introduce Customer-Centric Dynamic Pricing
The company should adopt a dynamic pricing model, but it must be more sophisticated than simply raising prices during peak hours.
- **Recommendation**: Implement dynamic pricing through **combo offers** that pair different coffees and sizes. These combos should be curated based on customer preferences rather than just historical sales data, encouraging experimentation and providing value.

#### 3. Pilot Cross-Selling Opportunities with Low Risk
Before committing to a significant menu expansion like bakery items, the company can test the market's appetite.
- **Recommendation**: Use dynamic combos as a pilot program. Introduce pairings of popular coffees with potential new food items. The success rate of these combos will provide valuable data on whether a full-scale introduction of bakery items is viable.

#### 4. Expand the Menu with a Strategic, Seasonal Approach
Menu expansion should be a thoughtful process that caters to different tastes and seasons.
- **Recommendation**: The company should expand its menu to include **flavored options and cold brews**. This expansion should be seasonal, emphasizing hot flavors in the winter and cold brews in the summer. It is also essential to retain the classic flavors that appeal to the core customer base.
