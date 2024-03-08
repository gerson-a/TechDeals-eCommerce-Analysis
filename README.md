# TechDeals eCommerce Analysis
Founded in 2018, TechDeals is an e-commerce company that sells popular electronics products to a global customer base. TechDeals sells products through their online site as well as through their mobile app, and they use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links.

To prepare for a company-wide town hall, a key stakeholder at TechDeals has asked for insights & recommendations based on a dataset of 108k+ customer transactions spanning from 2019-2022.

## About the Data

An ERD detailing the structure of the dataset can be found below. As each record in the "orders" table represents a unique order, the table grain is order ID.

Before analysis, additional steps were taken to process the data and address issues including missing values and inconsistent formatting. A log detailing these steps can be found at the bottom of this document.

<img src="https://github.com/gerson-a/TechDeals-eCommerce-Analysis/assets/142946842/96b27c67-bfdf-4764-9548-c626b63d243b" width=50% height=50%>

# Sales Insights

### Yearly Trends: 
From 2019-2022, TechDeals averaged slightly over **$7 million in sales and 27k orders per year** , eclipsing **$28 million in total sales and 108k orders** over the four year period. 

2019 was TechDeals' weakest overall year with less than $4 million in sales, but the company recieved a massive boost following the onset of the pandemic, with **order count doubling in 2020** to nearly 34k total orders. Average Order Value (AOV) also increased **31% to approximately $300 in 2020**, leading to a **163% spike in sales** and their best overall year, **totalling over $10 million in sales**. 

However, TechDeals has since seen consecutive years of sales decline, with **sales falling 10% in 2021** (despite a 6% YoY increase in orders) and a precipitous fall of **-46% in sales and -40% in orders** from 2021 to 2022. By 2022's conclusion, AOV had also fallen sharply, **dropping back to 2019 levels of approximately $229 spent per order.**

Looking at order distribution, NA and EMEA made up roughly **80% of sales and orders.** This remained persistent across time and varying product groupings. 

During this time period, TechDeals' gaming monitor was the best performing product in sales, and Apple Airpods sold the most units with **48k orders in total (45% of all orders).**  Overall, Apple was the strongest brand, with their products accounting for **roughly 50% of all sales and orders.**

<img src="https://github.com/gerson-a/TechDeals-eCommerce-Analysis/assets/142946842/c11c535e-a6c6-41ca-8317-d0ea6d82e26a" width=70% height=70%>

### Seasonality and Month-over-Month Trends:
Monthly summary stats here

highest order count months are consistently Jan/Sept/Dec

Feb/June/Oct are always tough

'20 and '21 were great, even with decline in early '21

serious 2nd half decline in '22

<img src="https://github.com/gerson-a/TechDeals-eCommerce-Analysis/assets/142946842/9fc007bc-9b1f-44e3-a65b-6c31d9f87a4d" width=70% height=70%>


# Recommendations

# Data Cleaning and Technical Process

