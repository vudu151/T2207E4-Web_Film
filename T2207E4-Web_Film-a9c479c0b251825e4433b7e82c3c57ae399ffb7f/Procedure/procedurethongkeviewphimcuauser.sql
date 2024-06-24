DROP PROCEDURE IF EXISTS sp_account_movie_view_stats;
CREATE PROCEDURE sp_account_movie_view_stats(
  IN start_date DATETIME,
  IN end_date DATETIME
)
BEGIN
  SELECT
    a.username,
    m.name AS movie_name,
    g.name AS genres_name,
    ws.name AS watch_status,
    COUNT(wms.id) AS total_views,
    SUM(TIMESTAMPDIFF(SECOND, vs.watch_duration,  '00:00:00')) AS total_watch_duration
  FROM watch_movie_status wms
  INNER JOIN accounts a ON wms.account_id = a.id
  INNER JOIN movies m ON wms.movie_id = m.id
  INNER JOIN movies_genres mg on m.id = mg.movie_id
  INNER JOIN genres g on mg.genres_id = g.id
  INNER JOIN view_status vs ON wms.view_status = vs.id
  INNER JOIN watch_status ws ON wms.watch_status_id = ws.id
  WHERE vs.date_stop_watch BETWEEN start_date AND end_date
  GROUP BY a.username, m.name, ws.name
  ORDER BY total_views DESC;
END;

CALL sp_account_movie_view_stats('2023-01-01 00:00:00', '2023-12-31 23:59:59');