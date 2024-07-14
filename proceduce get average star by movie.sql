DROP PROCEDURE IF EXISTS get_average_star_by_movie_id;
CREATE PROCEDURE get_average_star_by_movie_id(
    IN movie_id VARCHAR(255),
    OUT average_star INT
)
BEGIN
    SELECT ROUND(AVG(star), 0) INTO average_star
    FROM reviews
    WHERE movie_id = movie_id;
END;