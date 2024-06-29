DROP PROCEDURE IF EXISTS GetMoviePage;
 
CREATE PROCEDURE GetMoviePage(
    IN pageNum INT,
    IN pageSize INT,
    IN searchKeyword VARCHAR(255)
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
    FROM movies c
    WHERE (c.name LIKE CONCAT('%', searchKeyword, '%')
    OR c.keywords LIKE CONCAT('%', searchKeyword, '%') 
    );

    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));

    -- Truy vấn dữ liệu phân trang và tìm kiếm level <2 
    
     SELECT 
        m.*
    FROM movies m
    JOIN category_movie a ON a.id = m.category_movie_id
    WHERE ( m.name LIKE CONCAT('%', searchKeyword, '%')
       OR m.keywords LIKE CONCAT('%', searchKeyword, '%'))
    GROUP BY m.id, m.name, m.poster
    ORDER BY m.id DESC
    LIMIT startIdx, pageSize;


    -- Trả về tổng số trang
    SELECT totalPages AS TotalPages;
END;



