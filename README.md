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

## Tables used in the project :

• Album
• Artist
• Customer
• Employee
• Invoice
• Genre
• Invoice_line
• Media_type
• Playlist
• Playlist_track
• Track

➡ Queries Solved are :

***Q1: Who is the senior most employee based on job title?***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/b877a80d-d336-4eb1-8857-f51e99012050)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/236bd501-4433-496c-a3f3-a69009340863)

***Q2: Which countries have the most Invoices?***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/b972bfe8-d418-429e-b4f9-60d780dc9508)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/d90908db-4ab4-4daf-ac0a-977b3c5a23a4)

***Q3: What are the top 3 values of the total invoice?***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/1cc03cea-d2a9-407e-ad86-d64b90d31c50)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/8afb984c-e587-4f34-a2d1-e63109ba0f37)

***Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city where we made the most money.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/df0c91af-4f82-4594-aa2c-80bbcd378c2a)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/9195fa64-47ee-49af-99b2-c1132295c7a2)

***Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/38c9b93f-c2e4-418e-a210-6a125685f901)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/35b5ddf7-84c9-45d1-a9ae-53b6889c7391)

***Q6: Write a query to return the email, first name, last name, & Genre of all Rock Music listeners.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/da70c699-3118-4947-861b-69221964da8f)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/ef5c8d6d-5374-4817-b262-d8f96ccb571a)

***Q7: Let's invite the artists who have written the most rock music in our dataset.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/5f82c7ef-0e5a-402d-873a-a27741e0318d)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/f5d346f4-7e8d-4ef7-a228-e7a37eddc359)

***Q8: Return all the track names that have a song length longer than the average song length.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/1235c887-aed1-4294-8b5f-159ebbb907aa)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/0919fba2-80d9-4de8-ace3-95bf8daeff88)

***Q9: Find how much amount spent by each customer on artists. Write a query to return the customer name, artist name, and total spent.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/702d6a07-d4f3-4c52-838c-041d55740c29)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/4535ee32-8727-4a4d-9d0f-93b80787eeb6)

***Q10: We want to find out the most popular music Genre for each country.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/71db47f3-aa79-43a1-8105-bbbc2c3e6fb0)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/7f71a731-fe77-4d17-8ff4-20ff1ab89d43)

***Q11: Write a query that determines the customer that has spent the most on music for each country.***
![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/eeb69fdc-1da3-4325-ba18-6b58f05eb283)

![image](https://github.com/Abhishek8124/MUSIC-STORE-DATA-ANALYSIS-WITH-SQL/assets/166630090/039dd84b-43f8-4822-a08f-381276666611)



