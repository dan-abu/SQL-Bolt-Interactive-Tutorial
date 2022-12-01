-- 1.) List all movies and their combined sales in millions of dollars 
SELECT Id, title, (domestic_sales + international_sales) / 1000000 AS total_sales FROM movies
JOIN boxoffice
    ON movies.Id = boxoffice.movie_id;

-- 2.) List all movies and their ratings in percent
SELECT Id, title, rating*10 AS rating_percentage FROM movies
JOIN boxoffice
    ON movies.Id = boxoffice.movie_id;

-- 3.) List all movies that were released on even number years
SELECT Id, title, year FROM movies
WHERE year % 2 = 0;