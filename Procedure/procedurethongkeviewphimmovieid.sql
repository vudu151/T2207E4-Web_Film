DROP PROCEDURE IF EXISTS movie_stats_by_movies_id;
CREATE PROCEDURE movie_stats_by_movies_id(
    IN `start_date` DATE,
    IN `end_date` DATE,
    IN `movie_ids` BINARY(16)
)
BEGIN
    SELECT
        m.name AS movie_name,
        COUNT(DISTINCT wms.account_id) AS total_viewers,
        SUM(CASE WHEN vs.status = 1 THEN 1 ELSE 0 END) AS total_completed,
        SUM(IF(wst.name = 'Watched', 1, 0)) AS total_watched,
        SUM(IF(wst.name = 'Bookmarked', 1, 0)) AS total_bookmarked,
        SUM(IF(wst.name = 'Paused', 1, 0)) AS total_paused,
        SUM(IF(wst.name = 'Watch Again', 1, 0)) AS total_watch_again
    FROM movies m
    JOIN watch_movie_status wms ON m.id = wms.movie_id
    JOIN view_status vs ON wms.view_status = vs.id
    JOIN watch_status wst ON wms.watch_status_id = wst.id
    WHERE vs.date_stop_watch BETWEEN start_date AND end_date
      AND m.id = `movie_ids`
    GROUP BY m.name
    ORDER BY m.name;
END;

--CALL movie_stats_by_movies_id('2023-01-01', '2023-12-31', UNHEX('1a2b3c4d5e6f7g8h'));