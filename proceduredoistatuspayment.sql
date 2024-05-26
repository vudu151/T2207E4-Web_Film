DROP PROCEDURE IF EXISTS UpdatePaymentStatus;

CREATE PROCEDURE UpdatePaymentStatus(
    IN accountID
)
BEGIN
    DECLARE currentDate DATE;
    -- ngay hien tai + them 1 thang
    SET currentDate = DATE_ADD(CURRENT_DATE(), INTERVAL -1 MONTH);
    
    UPDATE payments p 
    WHERE p.account_id = accountID
    SET status = 0
    WHERE status = 1
        AND DATE_ADD(created_at, INTERVAL 1 MONTH) <= currentDate;
END;