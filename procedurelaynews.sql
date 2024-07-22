DROP PROCEDURE IF EXISTS GetNewsPaging;
 
CREATE PROCEDURE GetNewsPaging(
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
    FROM news c
    WHERE c.status = 1
    AND  c.name LIKE CONCAT('%', LOWER(searchKeyword), '%')
    
    
      ;

    -- Tính tổng số trang
    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));

    -- Truy vấn dữ liệu phân trang và tìm kiếm level <2 
    
     SELECT 
       c.*,         (SELECT totalRecords) AS total_newss,
		(SELECT totalPages) AS total_pageds
    FROM news c
   
    WHERE c.status = 1
AND  c.name LIKE CONCAT('%', LOWER(searchKeyword), '%')
 
    GROUP BY c.id, c.name
    ORDER BY c.created_add DESC
    LIMIT startIdx, pageSize;

 
END;



call GetNewsPaging(1,5,'');