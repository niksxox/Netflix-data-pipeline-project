USE netflix_db;

DROP TABLE IF EXISTS netflix;

CREATE TABLE netflix (
    title VARCHAR(255),
    director VARCHAR(255),
    country VARCHAR(500),
    release_year INT,
    type VARCHAR(50)
);

-- after inserting data

ALTER TABLE netflix 
ADD COLUMN IF NOT EXISTS inserted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

SELECT type, COUNT(*) FROM netflix GROUP BY type;

SELECT country, COUNT(*) 
FROM netflix 
GROUP BY country 
ORDER BY COUNT(*) DESC;

SELECT release_year, COUNT(*) 
FROM netflix 
GROUP BY release_year;

SELECT release_year, COUNT(*) 
FROM netflix 
WHERE type = 'Movie'
GROUP BY release_year
ORDER BY release_year;

SELECT country, release_year, COUNT(*) 
FROM netflix
WHERE type = 'Movie'
GROUP BY country, release_year 
ORDER BY release_year;