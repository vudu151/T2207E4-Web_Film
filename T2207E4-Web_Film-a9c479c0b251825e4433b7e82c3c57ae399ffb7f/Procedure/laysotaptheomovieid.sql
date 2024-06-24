DROP PROCEDURE IF EXISTS GetEpisodesByMovieId();
CREATE PROCEDURE GetEpisodesByMovieId(IN movie_id INT)
BEGIN
    SELECT * FROM Episodes WHERE movie_id = movie_id;
END ;