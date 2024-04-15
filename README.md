# MUSIC-STORE-DATA-ANALYSIS-WITH-SQL

## Overview
This project aims to analyze sales data from a music store using SQL. The dataset includes information such as sales transactions, customer details, and product information. By querying the dataset and performing various analyses, insights into sales trends, customer preferences, and product performance can be obtained.

### Dataset
The dataset used for this analysis contains the following tables:

- *sales_transactions:* Contains information about each sales transaction, including the transaction ID, customer ID, product ID, quantity sold, and transaction date.

- *customers:* Includes details about each customer, such as customer ID, name, email, and location.

- *products:* Provides information about each product available in the store, including product ID, name, genre, and price.

## Analysis

***1. Sales Trends***
Analyzed monthly sales trends to identify seasonal patterns.
Calculated total sales revenue and quantity sold each month.
Visualized sales trends using line charts.

***2. Customer Analysis***
Segmented customers based on their purchasing behavior (e.g., frequent buyers, one-time buyers).
Analyzed customer demographics and preferences.
Calculated customer lifetime value (CLV) to identify high-value customers.

***3. Product Performance***
Identified best-selling artist and popular genres.
Analyzed the impact of product price on sales.
Evaluated the performance of new products introduced over time.

# SQL Queries
The analysis was conducted using SQL queries, leveraging features such as joins, aggregations, and subqueries. Sample queries for each analysis task are provided in the queries.sql file.

### Results
*Key findings from the analysis include:*

- Seasonal sales peaks during the holiday season.
  
- High-value customers contribute significantly to total revenue.
  
- Popularity of certain music genres varies by region.
  
- Product pricing has a significant impact on sales volume.
  
- Future Work
  
- Future iterations of this project could include:

- Integration with additional data sources (e.g., online reviews, social media data).
  
- Implementation of predictive analytics models to forecast sales.
  
- Development of interactive dashboards for real-time monitoring.

## Technologies Used

***SQL***

- MYSQL (or your preferred SQL database)

How to Run
To replicate the analysis:

Clone this repository to your local machine.
Set up a MYSQL database and import the provided dataset.
Execute the SQL queries in queries.sql to perform the analysis.


