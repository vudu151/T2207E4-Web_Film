DROP PROCEDURE IF EXISTS GetMoviePage;

 
CREATE PROCEDURE GetMoviePage(
    IN pageNum INT,
    IN pageSize INT,
        IN p_keyword VARCHAR(255),
    IN p_genres VARCHAR(255),
    IN p_rating_from DECIMAL(3,1),
    IN p_rating_to DECIMAL(3,1),
    IN p_year_from INT,
    IN p_year_to INT
  
)
BEGIN
    DECLARE startIdx INT DEFAULT 0;
    DECLARE totalRecords INT DEFAULT 0;
    DECLARE totalPages INT DEFAULT 0;

    -- Tính chỉ số bắt đầu của dữ liệu cần lấy dựa trên số trang và kích thước trang
    SET startIdx = (pageNum-1) * pageSize;

    -- Tính tổng số bản ghi trong bảng movie thỏa mãn điều kiện search
    SELECT COUNT(*) INTO totalRecords
    FROM movies m
    INNER JOIN genres g ON  m.genre_id = g.id
    INNER JOIN category_movie cm ON m.category_movie_id = cm.id
    -- INNER JOIN genres_movies gm ON m.id = gm.movie_id
    -- INNER JOIN genres g ON gm.genre_id = g.id
    WHERE 
    (p_keyword IS NULL OR  
    ( m.name LIKE CONCAT('%',   LOWER(p_keyword), '%')
       OR m.keywords LIKE CONCAT('%',  LOWER(p_keyword), '%') )
     )
      AND (p_genres IS NULL OR g.name LIKE CONCAT('%', p_genres, '%')
    --   g.id IN (SELECT * FROM STRING_SPLIT(p_genres, ','))
      )
      AND (p_rating_from IS NULL OR m.mmpa_rating >= p_rating_from)
      AND (p_rating_to IS NULL OR m.mmpa_rating <= p_rating_to)
      AND (p_year_from IS NULL OR YEAR(m.release_date) >= p_year_from)
      AND (p_year_to IS NULL OR YEAR(m.release_date) <= p_year_to);
 
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));
 
    
     SELECT 
        m.*, g.name AS genremain, cm.name as catename,
        (SELECT totalRecords) AS total_items,
		(SELECT totalPages) AS total_pages
    FROM movies m
    INNER JOIN genres g ON  m.genre_id = g.id
    INNER JOIN category_movie cm ON m.category_movie_id = cm.id
    --  INNER JOIN genres_movies gm ON m.id = gm.movie_id
    -- INNER JOIN genres g ON gm.genre_id = g.id
    WHERE (p_keyword IS NULL OR   ( m.name LIKE CONCAT('%',   LOWER(p_keyword), '%')
       OR m.keywords LIKE CONCAT('%',  LOWER(p_keyword), '%') ) )
      AND (p_genres IS NULL OR 
    --   g.id IN (SELECT * FROM STRING_SPLIT(p_genres, ','))
       g.name LIKE CONCAT('%', p_genres, '%')
      )
      AND (p_rating_from IS NULL OR m.mmpa_rating >= p_rating_from)
      AND (p_rating_to IS NULL OR m.mmpa_rating <= p_rating_to)
      AND (p_year_from IS NULL OR YEAR(m.release_date) >= p_year_from)
      AND (p_year_to IS NULL OR YEAR(m.release_date) <= p_year_to)
    ORDER BY m.total_view DESC
    LIMIT startIdx, pageSize;


    -- -- Trả về tổng số trang
    -- SELECT totalPages AS TotalPages;
END;



-- call GetMoviePage(
--     1,
--     10,
--     '',
--  '',
--     NULL,
--   NULL,
--     10,
--     NULL
-- )