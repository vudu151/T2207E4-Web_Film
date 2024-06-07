DROP PROCEDURE IF EXISTS get_movie_revenuebymovieid;
CREATE PROCEDURE get_movie_revenuebymovieid(
    IN movie_id BINARY(16),
    IN revenue_start_date DATE,
     IN revenue_end_date DATE,
    OUT total_revenue DECIMAL(12,6),
    OUT avg_revenue DECIMAL(12,6),
    OUT max_revenue DECIMAL(12,6),
    OUT min_revenue DECIMAL(12,6)
)
BEGIN
    DECLARE total_revenue_sum DECIMAL(12,6);
    DECLARE total_revenue_count INT;
  SELECT
        SUM(lp.total_price) AS total_revenue,
        COUNT(*) AS total_revenue_count
    INTO total_revenue_sum, total_revenue_count
    FROM  license_payment lp
    WHERE
         lp.movies_id = movie_id
         AND 
        DATE(lp.pay_at) BETWEEN revenue_start_date AND revenue_end_date;
     -- SUM la tong tien trong nam 
 
    -- tinh tien  trung binh  trong nam , neu tong bang 0 thi ko chia ma tinh la 0
    SET avg_revenue = IFNULL(total_revenue_sum / total_revenue_count, 0);
    -- MAX va min la gia tri cao nhat/thap nhat trong nam -- o day la nhung nguoi mua goi cao /thap nhat 
     SELECT
        MAX(lp.total_price) AS max_revenue,
        MIN(lp.total_price) AS min_revenue
    INTO max_revenue, min_revenue
    FROM  license_payment lp
    WHERE
        lp.movies_id = movie_id
        AND 
        lp.pay_at BETWEEN revenue_start_date AND revenue_end_date;
     -- SUM la tong tien trong nam 
  
  SET total_revenue = IFNULL(total_revenue_sum,0); 

END;