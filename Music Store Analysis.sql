create database MUSIC_STORE;
use MUSIC_STORE;
select * from album;
select * from artist;
select * from customer;
select * from employee;
select * from genre;
select * from invoice;
select * from invoice_line;
select * from media_type;
select * from playlist;
select * from playlist_track;
select * from track;


/* 1. Who is the senior most employee based on job title?

2. Which countries have the most Invoices?

3. What are top 3 values of total invoice?

4. Which city has the best customers? 
We would like to throw a promotional Music Festival in the city we made the most money. Write a query that returns one city that has the highest sum of invoice totals. Return both the city name & sum of all invoice totals

5. Who is the best customer? 
The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money


                                                            Question Set 2 
1. Write query to return the email, first name, last name, & Genre of all Rock Music listeners. Return your list ordered alphabetically by email starting with A

2. Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands

3. Return all the track names that have a song length longer than the average song length. 
Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first

Question Set 3 
1. Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and total spent

2. We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre with the highest amount of purchases. Write a query that returns each country along with the top Genre. For countries where the maximum number of purchases is shared return all Genres

3. Write a query that determines the customer that has spent the most on music for each country. Write a query that returns the country along with the top customer and how much they spent. For countries where the top amount spent is shared, provide all customers who spent this amount
*/


-- 1.
select last_name , first_name, title 
from employee 
where levels>= 'L6';
-- OR
select last_name , first_name, title 
from employee 
order by levels desc
limit 1;

-- 2.
select billing_country, count(total) as most_invoices
from invoice
group by billing_country
order by most_invoices desc;

-- 3.
select billing_country ,total
from invoice
order by total desc
limit 3;
-- OR
select distinct billing_country, total
from invoice
order by total desc
limit 3;

-- 4.
select billing_city , sum(total) as made_most_money
from invoice 
group by billing_city
order by made_most_money desc
limit 1;

-- 5.
select c. first_name, c. last_name, sum(i.total) as most_spent
from customer c
join invoice i on c.customer_id = i. customer_id
group by c. first_name, c. last_name, city
order by most_spent desc
limit 1;


-- Set 2
-- 1.
select c. first_name, c. last_name, c.email, g.name
from customer c
join invoice i on c.customer_id = i.invoice_id
join invoice_line  il on i.invoice_id = il. invoice_id
join track t on il.track_id = t.track_id
join genre g on t.genre_id = g.genre_id
where g.name like 'Rock' 
order by email;
 -- OR
select distinct c. first_name, c. last_name, c.email
from customer c
join invoice i on c.customer_id = i.invoice_id
join invoice_line  il on i.invoice_id = il. invoice_id
where track_id in
(select track_id
from track t
join genre g on t.genre_id = g.genre_id
where g.name like 'Rock')
order by email;

-- 2.
select distinct a.name, count(a.artist_id) as most_rock
from artist a
join album ab on a.artist_id = ab.artist_id
join track t on ab. album_id = t.album_id
where genre_id in
(select g.genre_id
from genre g
join track t on g.genre_id = t.genre_id 
where g.name like 'rock')
group by a.name
order by most_rock desc
limit 10;
-- OR
SELECT artist.artist_id, artist.name,COUNT(artist.artist_id) AS number_of_songs
FROM track
JOIN album ON album.album_id = track.album_id
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id,artist.name
ORDER BY number_of_songs DESC
LIMIT 10;


-- 3.
select track.name , milliseconds
from track 
where milliseconds>
(select avg(milliseconds) as avg_milliseconds
from track)
order by milliseconds desc;

-- Set 3
-- 1.
select customer. first_name, customer.last_name, artist.name, sum(invoice_line.unit_price*quantity) as total_spent
from customer 
join invoice on customer.customer_id = invoice.customer_id
join invoice_line on invoice. invoice_id = invoice_line.invoice_id
join track on invoice_line.track_id = track.track_id
join album on track.album_id = album.album_id
join artist on album.artist_id = artist.artist_id
group by customer. first_name, customer.last_name, artist.name
having artist.name like 'AC/DC'
order by total_spent desc;
-- OR
with best_selling_artist as
(select a.artist_id, a.name, sum(il.unit_price * quantity) as most_sales
from artist a
join album ab on a.artist_id = ab.artist_id
join track t on ab.album_id = t.album_id
join invoice_line il on t. track_id = il.track_id
group by a.artist_id, a.name
order by most_sales desc
limit 1);
select c.first_name , c.last_name ,bsa.artist_id, bsa.name,  sum(il.unit_price * quantity) as most_spent
from customer c
join invoice i on c.customer_id = i.customer_id
join invoice_line il on i.invoice_id = il. invoice_id
join track t on il. track_id = t. track_id
join album ab on t.album_id = ab.album_id
join best_selling_artist bsa on ab.artist_id = bsa.artist_id
group by c.first_name , c.last_name , bsa.name, bsa.artist_id
order by most_spent desc;

-- 2.

WITH popular_genre AS 
(
    SELECT COUNT(invoice_line.quantity) AS purchases, customer.country, genre.name, genre.genre_id, 
	ROW_NUMBER() OVER(PARTITION BY customer.country ORDER BY COUNT(invoice_line.quantity) DESC) AS RowNo 
    FROM invoice_line 
	JOIN invoice ON invoice.invoice_id = invoice_line.invoice_id
	JOIN customer ON customer.customer_id = invoice.customer_id
	JOIN track ON track.track_id = invoice_line.track_id
	JOIN genre ON genre.genre_id = track.genre_id
	GROUP BY 2,3,4
	ORDER BY 2 ASC, 1 DESC
)
SELECT * FROM popular_genre WHERE RowNo <= 1

-- 3.
WITH Customter_with_country AS (
		SELECT customer.customer_id,first_name,last_name,billing_country,SUM(total) AS total_spending,
	    ROW_NUMBER() OVER(PARTITION BY billing_country ORDER BY SUM(total) DESC) AS RowNo 
		FROM invoice
		JOIN customer ON customer.customer_id = invoice.customer_id
		GROUP BY 1,2,3,4
		ORDER BY 4 ASC,5 DESC)
SELECT * FROM Customter_with_country WHERE RowNo <= 1

