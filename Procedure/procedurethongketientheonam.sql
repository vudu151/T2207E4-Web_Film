DROP PROCEDURE IF EXISTS get_yearly_revenue_stats;
CREATE PROCEDURE get_yearly_revenue_stats(
    IN revenue_start_year YEAR,
    IN revenue_end_year YEAR,
    OUT total_revenue DECIMAL(12,6),
    OUT avg_revenue DECIMAL(12,6),
    OUT max_revenue DECIMAL(12,6),
    OUT min_revenue DECIMAL(12,6)
)
BEGIN
    DECLARE total_revenue_sum DECIMAL(12,6);
    DECLARE total_revenue_count INT;
    
    SELECT
        SUM(total_price) AS total_revenue_sum,
        COUNT(*) AS total_revenue_count
    INTO total_revenue_sum, total_revenue_count
    FROM payments
    WHERE YEAR(created_at) BETWEEN revenue_start_year AND revenue_end_year;

    -- SUM la tong tien trong nam 
 
    -- tinh tien  trung binh  trong nam , neu tong bang 0 thi ko chia ma tinh la 0
    SET avg_revenue = IFNULL(total_revenue_sum / total_revenue_count, 0);
    -- MAX va min la gia tri cao nhat/thap nhat trong nam -- o day la nhung nguoi mua goi cao /thap nhat 
     SELECT
        MAX(total_price) AS max_revenue,
        MIN(total_price) AS min_revenue
    INTO max_revenue, min_revenue
    FROM payments
    WHERE YEAR(created_at) BETWEEN revenue_start_year AND revenue_end_year;
  
  SET total_revenue = IFNULL(total_revenue_sum,0);
END ;


-- VD  khi call 


CALL get_yearly_revenue_stats(2022, 2022, @total_revenue, @avg_revenue, @max_revenue, @min_revenue);

SELECT  @total_revenue, @avg_revenue , @max_revenue  ,   @min_revenue ;
