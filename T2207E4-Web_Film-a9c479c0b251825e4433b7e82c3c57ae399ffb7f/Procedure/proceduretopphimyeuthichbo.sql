DROP PROCEDURE IF EXISTS get_top_10_series_by_views_favorite;
CREATE PROCEDURE get_top_10_series_by_views_favorite(
     IN p_account_id BINARY(16)
)
BEGIN
    SELECT m.id, m.name, m.totalview, m.poster, m.level, g.name, c.name
    FROM movies m
    INNER JOIN movies_genres mg on m.id = mg.movie_id
    INNER JOIN genres g on mg.genres_id = g.id
    INNER JOIN category_movie c on m.category_movie_id = c.id
    INNER JOIN favorite_genres fg on fg.genres_id = g.id 
    INNER JOIN accounts a on fg.accounts_id = a.id
    WHERE c.name = 'series' 
    AND a.id = p_account_id
    ORDER BY m.totalview DESC
    LIMIT 10;
END;

