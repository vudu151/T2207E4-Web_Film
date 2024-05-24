
DROP PROCEDURE IF EXISTS GetMoviesFavorite;
CREATE PROCEDURE GetMoviesFavorite(
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
        LEFT JOIN favourites f ON m.id = f.movie_id
        WHERE f.account_id = accountId AND a.level > 0;
    ELSE
    -- nếu chưa đăng nhập
        SELECT COUNT(*) INTO totalRecords
        FROM movies
        WHERE level = 0;
    END IF;
 
    
    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));
    
    -- Tính tổng số bản ghi trong bảng movie thỏa mãn điều kiện search
    IF accountId IS NOT NULL THEN
        SELECT m.*, GROUP_CONCAT(g.name) AS genres
        FROM movies m
        INNER JOIN movies_genres mg ON m.id = mg.movie_id
        INNER JOIN genres g ON mg.genres_id = g.id
        LEFT JOIN favourites f ON m.id = f.movie_id
        WHERE f.account_id = accountId AND a.level > 0 
        GROUP BY m.id
        ORDER BY m.release DESC
        LIMIT startIndex, pageSize;
    ELSE
        SELECT m.*, GROUP_CONCAT(g.name) AS genres
        FROM movies m
        INNER JOIN movies_genres mg ON m.id = mg.movie_id
        INNER JOIN genres g ON mg.genres_id = g.id
        WHERE m.level = 0
        GROUP BY m.id
        ORDER BY m.release DESC
        LIMIT startIndex, pageSize;
    END IF;
    --trả số trang
    SELECT totalPages;
END;

--call GetMoviesFavorite(1,10,null);

