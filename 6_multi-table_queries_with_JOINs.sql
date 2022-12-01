-- 1.) Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, domestic_sales, international_sales FROM movies
JOIN boxoffice
    ON movies.Id = boxoffice.movie_id;

-- 2.) Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, domestic_sales, international_sales FROM movies
JOIN boxoffice
    ON movies.Id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- 3.) List all the movies by their ratings in descending order
SELECT title, rating FROM movies
JOIN boxoffice
    ON movies.Id = boxoffice.movie_id
ORDER BY rating DESC;