DROP PROCEDURE IF EXISTS get_related_episodes;
CREATE PROCEDURE get_related_episodes(IN p_episode_id VARCHAR(255))
BEGIN
    SELECT e.id, e.name,  e.movie_id as idmovie , m.name as movietile
    FROM episodes e
    JOIN movies m ON e.movie_id = m.id
    WHERE m.id = (
        SELECT movie_id
        FROM episodes
        WHERE id = p_episode_id
    )
    AND e.id <> p_episode_id
    ORDER BY e.name;
END;

call get_related_episodes('231231dwfdsfg');