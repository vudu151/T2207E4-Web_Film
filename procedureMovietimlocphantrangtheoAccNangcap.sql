DROP PROCEDURE IF EXISTS GetMoviePageWithAccountLevel;

CREATE PROCEDURE GetMoviePageWithAccountLevel(
    IN pageNum INT,
    IN pageSize INT,
    IN searchKeyword VARCHAR(255),
    IN accountId BINARY(16)
)
BEGIN
    DECLARE startIdx INT DEFAULT 0;
    DECLARE totalRecords INT DEFAULT 0;
    DECLARE totalPages INT DEFAULT 0;
    DECLARE accountLevel BOOLEAN DEFAULT 0;

    -- lấy level của account
    IF accountId IS NOT NULL THEN
        SELECT `level` INTO accountLevel FROM `accounts` WHERE `id` = accountId;
    END IF;

   
    -- Tính chỉ số bắt đầu của dữ liệu cần lấy dựa trên số trang và kích thước trang
    SET startIdx = (pageNum-1) * pageSize;

      -- Tính tổng số bản ghi trong bảng movie thỏa mãn điều kiện search
    SELECT COUNT(*)
    INTO totalRecords
    FROM movies m
    WHERE (accountLevel = 2  
    --nếu account level 2, tức đã trả tiền
          OR (accountLevel = 1 AND m.level < 2)
    -- nếu account chưa trả tiền , cho xem các phim level dưới 2
          OR ((accountId IS NULL OR accountLevel = 0) AND m.level < 1) )
    --nếu account chưa xác nhận ( level 0) hoặc chưa đăng nhập
      AND (m.name LIKE CONCAT('%', searchKeyword, '%')
           OR m.keywords LIKE CONCAT('%', searchKeyword, '%'));

    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));


     -- Truy vấn dữ liệu phân trang và tìm kiếm dựa theo payment status
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
      AND (m.name LIKE CONCAT('%', searchKeyword, '%')
           OR m.keywords LIKE CONCAT('%', searchKeyword, '%'))
    GROUP BY m.id, m.name, m.poster
    ORDER BY m.id DESC
    LIMIT startIdx, pageSize;

      -- Trả về tổng số trang
    SELECT totalPages AS TotalPages;
END;
 

call GetMoviePageWithAccountLevel(1,10,'', null);