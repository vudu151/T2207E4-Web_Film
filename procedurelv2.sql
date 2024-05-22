DROP PROCEDURE IF EXISTS GetMoviesFavoriteGenres;

CREATE PROCEDURE GetMoviesFavoriteGenres(
    IN pageNum INT,
    IN pageSize INT,
    IN accountId BINARY(16)
)
BEGIN
    DECLARE startIndex INT;
    DECLARE totalRecords INT;
    DECLARE totalPages INT;
    
    -- Tính chỉ số bắt đầu của dữ liệu cần lấy dựa trên số trang và kích thước trang
    SET startIndex = (pageNum - 1) * pageSize;
    
      -- Tính tổng số bản ghi trong bảng movie thỏa mãn điều kiện search
    IF accountId IS NOT NULL THEN
        SELECT COUNT(*) INTO totalRecords
        FROM movies m
        INNER JOIN movies_genres mg ON m.id = mg.movie_id
        INNER JOIN favorite_genres fg ON mg.genres_id = fg.genres_id
        INNER JOIN accounts a ON fg.accout_id = a.id
        WHERE fg.accout_id = accountId AND a.level > 0;
    ELSE
    -- nếu chưa đăng nhập
        SELECT COUNT(*) INTO totalRecords
        FROM movies
        WHERE level = 0;
    END IF;

    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));
 

    -- Truy vấn dữ liệu phân trang và tìm kiếm dựa theo payment status
    IF accountId IS NOT NULL THEN
        SELECT m.*, GROUP_CONCAT(g.name) AS genres
        FROM movies m
        INNER JOIN movies_genres mg ON m.id = mg.movie_id
        INNER JOIN genres g ON mg.genres_id = g.id
        INNER JOIN favorite_genres fg ON mg.genres_id = fg.genres_id
        INNER JOIN accounts a ON fg.accout_id = a.id
        WHERE fg.accout_id = accountId AND a.level > 0 
        GROUP BY m.id
        ORDER BY m.id DESC
        LIMIT startIndex, pageSize;
    ELSE
        SELECT m.*, GROUP_CONCAT(g.name) AS genres
        FROM movies m
        INNER JOIN movies_genres mg ON m.id = mg.movie_id
        INNER JOIN genres g ON mg.genres_id = g.id
        WHERE m.level = 0
        GROUP BY m.id
        ORDER BY m.id DESC
        LIMIT startIndex, pageSize;
    END IF;

    SELECT totalPages;
END;

--call GetMoviesFavoriteGenres(1,10,null);