DROP PROCEDURE IF EXISTS GetCurrentMonthPaymentStats;

CREATE PROCEDURE GetCurrentMonthPaymentStats()
BEGIN
    DECLARE currentYearMonth INT;
    
    SELECT CONCAT(YEAR(CURRENT_DATE()), LPAD(MONTH(CURRENT_DATE()), 2, '0')) INTO currentYearMonth;
    
    SELECT
        SUM(CASE WHEN status = 1 THEN price ELSE 0 END) AS total_successful_amount,
        COUNT(CASE WHEN status = 1 THEN 1 END) AS total_successful_payments,
        SUM(CASE WHEN status = 0 THEN price ELSE 0 END) AS total_failed_amount,
        COUNT(CASE WHEN status = 0 THEN 1 END) AS total_failed_payments
    FROM payments
    WHERE CONCAT(YEAR(created_at), LPAD(MONTH(created_at), 2, '0')) = CAST(currentYearMonth AS CHAR);
END;