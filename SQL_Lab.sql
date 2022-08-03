SELECT * FROM apple_store.test;
/* Which is the genre with the most app */
select prime_genre , sum(rating_count_tot) from apple_store.applestore
group by prime_genre
order by sum(rating_count_tot) desc
limit 1;

/* Which is the genre with the most */
select prime_genre , count(prime_genre) from apple_store.applestore
group by prime_genre
order by count(prime_genre) DESC
limit 1;

/* Which is the genre with the least*/
select prime_genre , sum(prime_genre) from apple_store.applestore
group by prime_genre
order by sum (prime_genre) ASC
limit 1;
/* Find the top 10*/
select prime_genre , count(prime_genre) from apple_store.applestore
group by prime_genre
order by count(prime_genre) desc
limit 10;


/* Find the top 10 apps best rated by users*/
select  track_name from apple_store.applestore
group by track_name
order by sum(user_rating) desc
limit 10;

/* FThe insight*/
/* We notice  the game genre is the most rated , this is explained by the interest of youth by gaming.
We can see that education comes at the fourth, which can be explaines by the tendency to learn remotely */

/* */
select  price, track_name from apple_store.applestore
group by track_name
order by sum(price) desc;


select  price, track_name from apple_store.applestore
group by track_name
order by price, count(track_name) desc
limit 10;

