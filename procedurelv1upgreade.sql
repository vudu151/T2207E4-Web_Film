DROP PROCEDURE IF EXISTS GetMoviePageWithAccount;

CREATE PROCEDURE GetMoviePageWithAccount(
    IN pageNum INT,
    IN pageSize INT,
    IN searchKeyword VARCHAR(255),
    IN accountId BINARY(16)
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
    FROM movies m
    WHERE (
    --điều kiện movie level dưới 2 và account   không tồn tại ở bảng payment (tức chưa trả tiền)
        (m.level < 2 AND NOT EXISTS (
        
            SELECT 1 FROM payments p
            WHERE p.account_id = accountId AND p.movie_id = m.id
        ))
        OR
    -- điều kiện    account có tồn tại ở bảng payment (tức đã trả tiền) , ko có điều kiện movie level
        (EXISTS (
            SELECT 1 FROM payments p
            WHERE p.account_id = accountId AND p.movie_id = m.id
        ))
        OR
    -- điều kiện  movie level dưới 1 (trailer) và account không tồn tại (chưa login)
        (m.level < 1 AND accountId IS NULL)
    )
    AND (m.name LIKE CONCAT('%', searchKeyword, '%')
         OR m.keywords LIKE CONCAT('%', searchKeyword, '%'));

    -- Calculate the total number of pages
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));

    -- Query the data with pagination and search, considering the account payment status and view status
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
    WHERE (
        (m.level < 2 AND NOT EXISTS (
            SELECT 1 FROM payments p
            WHERE p.account_id = accountId AND p.movie_id = m.id
        ))
        OR
        (EXISTS (
            SELECT 1 FROM payments p
            WHERE p.account_id = accountId AND p.movie_id = m.id
        ))
        OR
        (m.level < 1 AND accountId IS NULL)
    )
    AND (m.name LIKE CONCAT('%', searchKeyword, '%')
         OR m.keywords LIKE CONCAT('%', searchKeyword, '%'))
    GROUP BY m.id, m.name, m.poster
    ORDER BY m.id DESC
    LIMIT startIdx, pageSize;

    -- Return the total number of pages
    SELECT totalPages AS TotalPages;
END;

call GetMoviePageWithAccount(1,10,'', null);