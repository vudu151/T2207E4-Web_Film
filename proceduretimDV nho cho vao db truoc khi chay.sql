DROP PROCEDURE IF EXISTS GetCebrityPage;
 
CREATE PROCEDURE GetCebrityPage(
    IN pageNum INT,
    IN pageSize INT,
    IN searchKeyword VARCHAR(255),
    IN p_job VARCHAR(255),
     IN letter VARCHAR(255),
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
    SELECT COUNT(*)
    INTO totalRecords
    FROM celebrities c
    INNER JOIN celebrity_job d ON  d.celebrity_id = c.id 
    INNER JOIN jobs j on  j.id = d.job_id 
    WHERE c.status = 1
    AND (c.name LIKE CONCAT('%', LOWER(searchKeyword), '%')
    OR c.slug LIKE CONCAT('%', LOWER(searchKeyword), '%') )
    and c.name LIKE CONCAT(  LOWER(letter), '%')
    AND j.name LIKE CONCAT('%', p_job, '%') 
    AND (  YEAR(c.birthday) >= p_year_from)
      AND (  YEAR(c.birthday) <= p_year_to) 
    ;

    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));

    -- Truy vấn dữ liệu phân trang và tìm kiếm level <2 
    
     SELECT 
       c.*, d.job_id, j.name as job,    (SELECT totalRecords) AS total_items,
		(SELECT totalPages) AS total_pages
    FROM celebrities c
    INNER JOIN celebrity_job d ON  d.celebrity_id = c.id 
    INNER JOIN jobs j on  j.id = d.job_id 
    WHERE c.status = 1
AND (c.name LIKE CONCAT('%', LOWER(searchKeyword), '%')
    OR c.slug LIKE CONCAT('%', LOWER(searchKeyword), '%') )
       and c.name LIKE CONCAT(  LOWER(letter), '%')
    AND j.name LIKE CONCAT('%', p_job, '%') 
    AND (  YEAR(c.birthday) >= p_year_from)
      AND (  YEAR(c.birthday) <= p_year_to) 
    AND c.status = 1
    
    ORDER BY c.name DESC
    LIMIT startIdx, pageSize;

 
END;



call GetCebrityPage(1,5,'','','b',1700,3100);