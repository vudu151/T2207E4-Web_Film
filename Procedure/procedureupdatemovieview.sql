DROP PROCEDURE IF EXISTS update_movie_totalview;
 
CREATE PROCEDURE update_movie_totalview()
BEGIN
    DECLARE v_current_date DATETIME;

    SET v_current_date = NOW();

  --tao bang tam luu movie id va tong view da xem
    CREATE TEMPORARY TABLE temp_movie_views (
        movie_id BINARY(16),
        total_views INT
    );

   -- nhap vao bang tam du lieu movie theo dieu kien phim phai da duoc xem hoac xem lai, va ngay xem <= ngay hien tai
    INSERT INTO temp_movie_views (movie_id, total_views)
    SELECT m.id, COUNT(wms.id) AS total_views
    FROM movies m
    LEFT JOIN watch_movie_status wms ON m.id = wms.movie_id
    LEFT JOIN view_status vs ON wms.view_status = vs.id
    LEFT JOIN watch_status ws ON wms.watch_status_id = ws.id
    WHERE ws.name IN ('Watched', 'Watched again') AND vs.date_stop_watch IS NOT NULL AND vs.date_stop_watch <= v_current_date
    GROUP BY m.id;

    -- Update tong view cua moi movie = tong vie hien tai + tong da xem hoac xem lai
    UPDATE movies m
    INNER JOIN temp_movie_views tmv ON m.id = tmv.movie_id
    SET m.totalview = m.totalview + tmv.total_views;

   -- bo bang tam  
    DROP TABLE IF EXISTS temp_movie_views;
END  ;