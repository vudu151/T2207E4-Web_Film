DROP PROCEDURE IF EXISTS UpdatePaymentAndAccountStatus;

CREATE PROCEDURE UpdatePaymentAndAccountStatus()
BEGIN
    DECLARE currentDate DATE;
 
    SET currentDate = CURRENT_DATE();
    
    START TRANSACTION;
    
    UPDATE payments p
    INNER JOIN accounts a ON p.account_id = a.id
    SET p.status = 0, a.level = 1
    WHERE p.status = 1
        AND DATE_ADD(p.created_at, INTERVAL 1 MONTH) <= currentDate
        AND a.level = 2;
    
    COMMIT;
END;