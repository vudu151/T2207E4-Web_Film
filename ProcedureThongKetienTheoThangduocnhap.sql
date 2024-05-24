DROP PROCEDURE IF EXISTS GetMonthlyPaymentStats;
 
CREATE PROCEDURE GetMonthlyPaymentStats(
    IN targetYear INT,
    IN targetMonth INT
)
BEGIN
    DECLARE targetYearMonth VARCHAR(6);
    
    SELECT CONCAT(targetYear, LPAD(targetMonth, 2, '0')) INTO targetYearMonth;
    
    SELECT
        SUM(CASE WHEN status = 1 THEN price ELSE 0 END) AS total_successful_amount,
        COUNT(CASE WHEN status = 1 THEN 1 END) AS total_successful_payments,
        SUM(CASE WHEN status = 0 THEN price ELSE 0 END) AS total_failed_amount,
        COUNT(CASE WHEN status = 0 THEN 1 END) AS total_failed_payments
    FROM payments
    WHERE CONCAT(YEAR(created_at), LPAD(MONTH(created_at), 2, '0')) = targetYearMonth;
END;