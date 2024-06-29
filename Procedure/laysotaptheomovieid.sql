DROP PROCEDURE IF EXISTS GetEpisodesByMovieId;
CREATE PROCEDURE GetEpisodesByMovieId(IN movie_id VARCHAR(255))
BEGIN
    SELECT * FROM episodes e WHERE e.movie_id = movie_id ORDER BY e.name ASC LIMIT 1;
END ;