DROP PROCEDURE IF EXISTS GetCebrityPage;
 
CREATE PROCEDURE GetCebrityPage(
    IN pageNum INT,
    IN pageSize INT,
    IN searchKeyword VARCHAR(255),
    IN p_job VARCHAR(255)
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
    FROM celebrities c
    INNER JOIN celebrity_job d ON  d.celebrity_id = c.id 
    INNER JOIN jobs j on  j.id = d.job_id 
    WHERE c.status = 1
    AND (c.name LIKE CONCAT('%', LOWER(searchKeyword), '%')
    OR c.slug LIKE CONCAT('%', LOWER(searchKeyword), '%') )
    AND j.name LIKE CONCAT('%', p_job, '%') 
    ;

    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));

    -- Truy vấn dữ liệu phân trang và tìm kiếm level <2 
    
     SELECT 
       c.*, d.job_id, j.name as job,        (SELECT totalRecords) AS total_items,
		(SELECT totalPages) AS total_pages
    FROM celebrities c
    INNER JOIN celebrity_job d ON  d.celebrity_id = c.id 
    INNER JOIN jobs j on  j.id = d.job_id 
    WHERE c.status = 1
AND (c.name LIKE CONCAT('%', LOWER(searchKeyword), '%')
    OR c.slug LIKE CONCAT('%', LOWER(searchKeyword), '%') )
    AND j.name LIKE CONCAT('%', p_job, '%') 
    AND c.status = 1
    GROUP BY c.id, c.name
    ORDER BY c.name DESC
    LIMIT startIdx, pageSize;

 
END;



call GetCebrityPage(2,5,'','');