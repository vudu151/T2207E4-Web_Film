DROP PROCEDURE IF EXISTS GetMovieHomeSlider;
 
CREATE PROCEDURE GetMovieHomeSlider(
  IN accountId BINARY(16)
)
BEGIN
  DECLARE accountLevel BOOLEAN DEFAULT 0;
   IF accountId IS NOT NULL THEN
        SELECT `level` INTO accountLevel FROM `accounts` WHERE `id` = accountId;
    END IF;
     SELECT 
        m.id, 
        m.name, 
        m.total_episode, 
        m.poster, 
        m.release, 
        m.run_time, 
        m.mmpa_rating, 
        m.keywords, 
        m.description, 
        m.view, 
        m.level, 
        m.status, 
        m.categories_movies_id
    FROM movies m
    WHERE (accountLevel = 2
          OR (accountLevel = 1 AND m.level < 2)
          OR  ((accountId IS NULL OR accountLevel = 0) AND m.level < 1)) 
    GROUP BY m.id, m.name, m.poster
    ORDER BY m.view DESC
    LIMIT 6;

END;