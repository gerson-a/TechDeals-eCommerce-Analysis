# TechDeals eCommerce Analysis
Founded in 2018, TechDeals is an e-commerce company that sells popular electronics products to a global customer base. TechDeals sells products through their online site as well as through their mobile app, and they use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links.

To prepare for a company-wide town hall, a key stakeholder at TechDeals has asked for insights & recommendations based on a dataset of 108k+ customer transactions spanning from 2019-2022.

## About the Data

An ERD detailing the structure of the dataset can be found below. As each record in the "orders" table represents a unique order, the table grain is order ID.

Before analysis, additional steps were taken to process the data and address issues including missing values and inconsistent formatting. A log detailing these steps can be found at the bottom of this document.

  <img src="https://github.com/gerson-a/TechDeals-eCommerce-Analysis/assets/142946842/96b27c67-bfdf-4764-9548-c626b63d243b" width=50% height=50%>

## Sales Insights

### Yearly Trends: 
* From 2019-2022, TechDeals averaged slightly over **$7 million in sales and 27k orders per year** , eclipsing **$28 million in total sales and 108k orders** over the four year period. 

* 2019 was TechDeals' weakest overall year with less than $4 million in sales, but the company recieved a massive boost following the onset of the pandemic, as **order count doubled in 2020** to nearly 34k total orders. Average Order Value (AOV) also increased **31% to approximately $300 in 2020**, leading to a **163% spike in sales** and their best overall year, **totalling over $10 million in sales**. 

* TechDeals has since seen consecutive years of sales decline, with **sales falling 10% in 2021** (despite a 6% YoY increase in orders) and a precipitous fall of **-46% in sales and -40% in orders** from 2021 to 2022. By 2022's conclusion, AOV had also fallen sharply, **dropping back to 2019 levels of approximately $229 spent per order.**

* Looking at order distribution, NA and EMEA made up roughly **80% of sales and orders.** This remained persistent across time and varying product groupings. 

* During this time period, TechDeals' gaming monitor was the best performing product in sales, and Apple Airpods sold the most units with **48k orders in total (45% of all orders).**  Overall, Apple was the strongest brand, with their products accounting for **roughly 50% of all sales and orders.**

    <img src="https://github.com/gerson-a/TechDeals-eCommerce-Analysis/assets/142946842/c11c535e-a6c6-41ca-8317-d0ea6d82e26a" width=70% height=70%>

### Seasonality and Month-over-Month Trends:
* TechDeals experiences seasonal fluctuations in sales, as January/September/December have consistenly high order counts and sales, while February/June/October tend to perform poorly. The average month consisted of **$585k in sales over 2200+ orders averaging roughly $250 per order.** 

* TechDeal's best month was **December '20, in which it eclipsed $1.25m in sales across 4k+ orders**, but its worst month was **October '22 with only $178k in sales and 825 orders.** With regards to growth specifically, **March 2020 led the way with increases of +50% in sales and +46% orders month-over-month**, and **October 2022 was the worst growth month, dropping -55% and -47% in those categories respectively.**

* Looking more broadly, the company saw large dropoffs in performance over the 1st halves of both 2021 and 2022; during these 6 month periods, sales fell by **an average of -10% month-over-month.**

    <img src="https://github.com/gerson-a/TechDeals-eCommerce-Analysis/assets/142946842/9fc007bc-9b1f-44e3-a65b-6c31d9f87a4d" width=70% height=70%>

### Refund Rates:

* Although roughly 5% of all TechDeals' transactions were refunded by customers, several products had much higher refund rates. The Macbook and Thinkpad laptops had over **11% of orders refunded,** nearly 4% higher than the next most refunded item, the iPhone (7.6%).

* The gaming monitor also had an above-average refund rate of nearly 6.2%, suggesting that TechDeals' more expensive products are more likely to be refunded.

* Despite the massive increase in sales in 2020, iPhone and Macbook refunds remained the same while Airpods refunds jumped by **+4% to 10% of orders refunded.**

* Refunds of Apple products fell across the board in 2021 to an average of **4% of products refunded.** There were 0 refunds for Apple products in 2022, which may be the result of missing data.

* Airpods were the most refunded item overall, with over **2.6k orders returned.**

## Loyalty Program Insights

* Over **32k customers signed up** for the loyalty program from 2019-2022, representing **43.5% of the total customer base** during that period. Of those signups, **23.3k came from direct marketing at a below-average 40% signup rate.** Excluding signups from unknown sources, **email marketing had the highest conversion rate at 58.8%.**

* Purchases from loyalty customers only amounted to **11% of total sales in 2019,** but that figure has increased each year since. Loyalty transactions outpaced non-loyalty sales for the first time in April 2021 and represented **53% of sales in 2021,** eventually growing to a high-water mark of **55% in 2022.**

*  Non-loyalty orders saw a spike in AOV with the onset of the pandemic, but the AOV of loyalty purchases increased steadily over time and outgrew non-loyalty AOV halfway through 2021 (reaching a maximum of **$269 AOV in October 2021)**. Loyalty orders maintained a higher AOV until the final months of 2022, during which TechDeals' performance fell across the board. 

    <img src="https://github.com/gerson-a/TechDeals-eCommerce-Analysis/assets/142946842/dbe97597-e915-4189-9a7d-307cdbefffe7" width=70% height=70%>


## Operational Efficiency

* TechDeals has been consistent in its shipping times, regardless of region. From time of purchase to delivery, shipping has taken around **7.5 days from 2020-2022,** with orders in 2019 only taking slightly longer to deliver at **an average of 7.7 days**.

* APAC and EMEA did see slower shipping in 2019, with both averaging **slightly over 8 days to deliver**, but those times have since dropped to levels similar to the other regions.

# Recommendations

Moving forward, TechDeals should consider proposals in the following areas --

### Sales:
* Discontinue sales of the unpopular Bose Soundport Headphones, which made only $3.3k for TechDeals over the 4-year span. 

* Work with sales team to investigate the preciptious, company-wide drop in sales over the 2nd half of 2022.

* Advertise more heavily during February/June/October to combat TechDeals' historically poor performance during those months.

* Promote high AOV and popular products such as the gaming monitor, Macbook, and AirPods.

### Loyalty Program:
* Increase social media marketing, as the channel had an above-average conversion rate. Decrease direct marketing spend due to its low signup rate. 

* Work with marketing team to better understand why email was the most effective channel at generating loyalty program signups.

* Incentivize further loyalty program signups by offering priority shipping to loyalty customers. 

### Data Quality:
* Work with data engineering to track precisely when customers sign up for the loyalty program, both in the past (if possible) and moving forward. 

* Investigate missing refund data from 2022 and ensure future transactions will be unaffected.

# Data Cleaning and Technical Process

The excel workbook containing the original dataset, pivot tables, and further analysis done on the data can be found in this repository's files. The SQL queries for this analysis can be found in the repository as well. 

Prior to analysis, the following steps were taken to clean the data:

* Fixed formatting inconsistencies with purchase timestamps, reformatting all rows to MM/DD/YY format.

* Calculated purchase months and years, giving each its own column for pivot table manipulation.

* Removed erroneous refunds with timestamps occuring in the future (after the date at the time of analysis).

* Created a helper column to identify refunds.

* In a new column, copied over and fixed inconsistencies in product names.

* Filled in missing/incorrect regions within the "country_lookup" table 

* Using the vlookup function to reference the "country_lookup" table, created a region column within the "orders" table.

* Logged the following missing/null values:
	* USD_PRICE / LOCAL_PRICE equal to 0 or blank
		* 191 rows (0.17% of rows affected)

	* CURRENCY is blank.
		* 54 rows affected
		
	* MARKETING_CHANNEL is "unknown" or blank 
		* 82 "unknown" rows, 1387 blank rows -- 1469 total rows affected (1.4% of rows)
		
	*  	ACCOUNT_CREATION_METHOD is "unknown" or blank 
		* 2900 "unknown" rows, 1387 blank rows -- 4287 total rows affected (3.9% of rows)
		
	*  COUNTRY_CODE is blank
		* 140 rows affected (0.13% of rows affected)



















