DROP PROCEDURE IF EXISTS movie_stats_pagin;
CREATE PROCEDURE movie_stats_paging(
    IN start_date DATE,
    IN end_date DATE,
    IN pageNum INT,
    IN pageSize INT
)
BEGIN
    DECLARE startIdx INT DEFAULT 0;
    DECLARE totalRecords INT DEFAULT 0;
    DECLARE totalPages INT DEFAULT 0;

    -- Tính chỉ số bắt đầu của dữ liệu cần lấy dựa trên số trang và kích thước trang
    SET startIdx = (pageNum-1) * pageSize;
-- Tính tổng số bản ghi trong bảng movie thỏa mãn điều kiện search
    SELECT COUNT(*)
    INTO totalRecords
    FROM movies  m
    INNER JOIN watch_movie_status wms ON m.id = wms.movie_id
    INNER JOIN view_status vs ON wms.view_status = vs.id
   INNER JOIN watch_status wst ON wms.watch_status_id = wst.id
    WHERE vs.date_stop_watch BETWEEN start_date AND end_date;
   -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));
    -- Truy vấn dữ liệu phân trang
    SELECT
        m.name AS movie_name,
        COUNT(DISTINCT wms.account_id) AS total_viewers,
        SUM(IF(vs.status = 1, 1, 0)) AS total_completed,
        SUM(IF(wst.name = 'Watched', 1, 0)) AS total_watched,
        SUM(IF(wst.name = 'Bookmarked', 1, 0)) AS total_bookmarked,
        SUM(IF(wst.name = 'Paused', 1, 0)) AS total_paused,
        SUM(IF(wst.name = 'Watch Again', 1, 0)) AS total_watch_again
    FROM movies m
   INNER JOIN watch_movie_status wms ON m.id = wms.movie_id
   INNER JOIN view_status vs ON wms.view_status = vs.id
  INNER JOIN watch_status wst ON wms.watch_status_id = wst.id
    WHERE vs.date_stop_watch BETWEEN start_date AND end_date
    GROUP BY m.name
    ORDER BY m.name
    LIMIT startIdx, pageSize;
END;

CALL movie_stats_by_date_range_and_status('2023-01-01', '2023-12-31', 10, 1);