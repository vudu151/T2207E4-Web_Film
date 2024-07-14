DROP PROCEDURE IF EXISTS list_favorite_genres;
 

CREATE PROCEDURE list_favorite_genres(
    IN p_account_id BINARY(16) 
    ,IN p_limit INT
  --,IN p_movie_id BINARY(16)
)
BEGIN
     DECLARE v_num_favorite_movies INT;

    -- Get the count of favorite movies for the account
    SELECT COUNT(*) INTO v_num_favorite_movies
    FROM favorites
    WHERE accounts_id = p_account_id;

    --Select random favorite movies
    SELECT m.*
    FROM (

        SELECT *
FROM movies m
INNER JOIN movies_genres mg ON m.id = g.movie_id
INNER JOIN genres g ON mg.genres_id = g.id
INNER JOIN favorite_genres fg ON g.id = fg.genres_id 
WHERE fg.accounts_id = p_account_id
ORDER BY RAND()
LIMIT p_limit
    ) AS t
    ORDER BY RAND()
    LIMIT p_limit;

END;