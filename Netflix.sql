-- selecting everything from the netflix_titles table
SELECT * FROM social_media.netflix_titles;

USE social_media;

-- showing the distinct types
SELECT DISTINCT type
FROM netflix_titles;

-- counting movies acted different years
SELECT release_year, COUNT(*) AS number_of_movies
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

-- selecting distinct countries
SELECT DISTINCT country
FROM netflix_titles;

-- how many movies or shows were made in different countries
SELECT country, COUNT(*) AS movie_count
FROM netflix_titles
GROUP BY country
ORDER BY country;

-- selected the diffferent listed_in's
SELECT DISTINCT listed_in
FROM netflix_titles;

-- counting how many movies have different ratings
SELECT rating, COUNT(*) AS number_of_rating
FROM netflix_titles
GROUP BY rating
ORDER BY rating;

-- counting the numbers of the different listed_in'
SELECT listed_in, COUNT(*) AS number_of_listedin
FROM netflix_titles
GROUP BY listed_in
ORDER BY listed_in;

-- how many directors are there
SELECT DISTINCT director
FROM netflix_titles
ORDER BY director;

-- how many movies have different directors directed
SELECT director, COUNT(*) AS directed_numbers
FROM netflix_titles
GROUP BY director
ORDER BY director;

-- selecting the cast and the show/movie they acted
SELECT type, cast
FROM netflix_titles;

-- counting the number of shows/movies
SELECT type, COUNT(*) AS number_of_movies_shows
FROM netflix_titles;
