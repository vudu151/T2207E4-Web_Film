DROP PROCEDURE IF EXISTS get_top_10_movies_by_views_series;
CREATE PROCEDURE get_top_10_movies_by_views_series(
    
)
BEGIN
    SELECT m.id, m.name, m.totalview, m.poster, m.level, g.name, c.name
    FROM movies m
    INNER JOIN movies_genres mg on m.id = mg.movie_id
    INNER JOIN genres g on mg.genres_id = g.id
    INNER JOIN category c on m.category_movie_id = c.id
    WHERE c.name = 'series'
    ORDER BY m.totalview DESC
    LIMIT 10;
END;