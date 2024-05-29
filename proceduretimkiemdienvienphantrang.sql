DROP PROCEDURE IF EXISTS GetCebrityPage;
 
CREATE PROCEDURE GetCebrityPage(
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
    FROM celebrity c
    INNER JOIN celebrity_job d  ON c.id = d.celebrity_id
    INNER JOIN job j on d.job_id = j.id
    WHERE c.status = 1
    AND (c.name LIKE CONCAT('%', searchKeyword, '%')
    --OR c.keywords LIKE CONCAT('%', searchKeyword, '%') 
    or j.roles_name LIKE CONCAT('%', searchKeyword, '%') 
    );

    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));

    -- Truy vấn dữ liệu phân trang và tìm kiếm level <2 
    
     SELECT 
       c.*, d.job_id, j.roles_name
    FROM celebrity c
    INNER JOIN celebrity_job d ON c.id = d.celebrity_id
    INNER JOIN job j on d.job_id = j.id
    WHERE c.status = 1
AND (c.name LIKE CONCAT('%', searchKeyword, '%')
    --OR c.keywords LIKE CONCAT('%', searchKeyword, '%') 
    or j.roles_name LIKE CONCAT('%', searchKeyword, '%') )
    GROUP BY c.id, c.name
    ORDER BY c.name DESC
    LIMIT startIdx, pageSize;


    -- Trả về tổng số trang
    SELECT totalPages AS TotalPages;
END;



