DROP PROCEDURE IF EXISTS get_revenue_stats4;
CREATE PROCEDURE get_revenue_stats4(
    IN revenue_start_date DATE,
    IN revenue_end_date DATE
)
BEGIN
    DECLARE revenue_date DATE;
    DECLARE current_month INT;
       DECLARE current_year INT;
    DECLARE monthly_total_revenue DECIMAL(12,2);
    DECLARE monthly_total_payments INT;
    DECLARE monthly_total_payments_5 INT;
    DECLARE monthly_total_payments_10 INT;
    DECLARE monthly_total_payments_5_percent DECIMAL(12,2);
    DECLARE monthly_total_payments_10_percent DECIMAL(12,2);

    -- SET revenue_date = revenue_start_date;
        SET revenue_date = DATE_FORMAT(revenue_start_date, '%Y-%m-01');
    CREATE TEMPORARY TABLE IF NOT EXISTS monthly_revenue_stats (
        id int AUTO_INCREMENT PRIMARY KEY,
        month INT,
        year INT,
        total_revenue DECIMAL(12,6),
        total_payments INT,
        total_payments_5 INT,
        total_payments_10 INT,
        total_payments_5_percent DECIMAL(12,6),
        total_payments_10_percent DECIMAL(12,6) 
    );

    WHILE revenue_date <= revenue_end_date DO
        SET current_month = MONTH(revenue_date);
     SET current_year = YEAR(revenue_date);
    SELECT
            MONTH(revenue_date) AS month,
            YEAR(revenue_date) AS year,
            IFNULL(SUM(totalpricepayment), 0) AS total_revenue,
            COUNT(*) AS total_payments,
            IFNULL(SUM(IF(totalpricepayment = 5, 1, 0)), 0)  AS total_payments_5,
            IFNULL(SUM(IF(totalpricepayment = 10, 1, 0)), 0)  AS total_payments_10,
            IFNULL((SUM(IF(totalpricepayment = 5, 1, 0)) * 100.0) / COUNT(*), 0) AS total_payments_5_percent,
            IFNULL((SUM(IF(totalpricepayment = 10, 1, 0)) * 100.0) / COUNT(*), 0) AS total_payments_10_percent
        INTO @month, @year, @total_revenue, @total_payments, @total_payments_5, @total_payments_10, @total_payments_5_percent, @total_payments_10_percent
        FROM paymentuser
        WHERE created_at BETWEEN revenue_date AND LAST_DAY(revenue_date);

        INSERT INTO monthly_revenue_stats (
            month, year, total_revenue, total_payments, total_payments_5, total_payments_10, total_payments_5_percent, total_payments_10_percent
        ) VALUES (
            @month, @year, @total_revenue, @total_payments, @total_payments_5, @total_payments_10, @total_payments_5_percent, @total_payments_10_percent
        );

        SET revenue_date = DATE_ADD(revenue_date, INTERVAL 1 MONTH);
    END WHILE;

    SELECT * FROM monthly_revenue_stats;
 
END;

CALL get_revenue_stats4('2024-02-28', '2024-07-30');
 