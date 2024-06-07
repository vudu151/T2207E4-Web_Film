DROP PROCEDURE IF EXISTS update_account_status_level;
CREATE PROCEDURE update_account_status_level()
BEGIN
    DECLARE v_current_date DATETIME;
    DECLARE not_pay INT;
    SET v_current_date = NOW();
    
    -- lay  'Not Pay' account_status_ID
    SELECT id INTO  not_pay  
    FROM account_status
    WHERE name = 'Not Pay';

    UPDATE accounts a
    INNER JOIN payments p ON a.id = p.account_id
    SET a.level = 0, a.account_status_id =  not_pay 
    WHERE DATE_ADD(p.created_at, INTERVAL 1 YEAR) <= v_current_date;
END;