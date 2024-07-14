DROP PROCEDURE IF EXISTS check_movie_eligibility;
 

CREATE PROCEDURE check_movie_eligibility(
    IN p_account_id BINARY(16),
    IN p_movie_id BINARY(16)
)
BEGIN
    DECLARE v_account_level INT;
    DECLARE v_movie_level INT;
    DECLARE v_is_eligible TINYINT(1) DEFAULT 0;

    SELECT a.level INTO v_account_level
    FROM accounts a
    WHERE a.id = p_account_id;

    SELECT m.level INTO v_movie_level
    FROM movies m
    WHERE m.id = p_movie_id;

    IF v_account_level >= v_movie_level THEN
        SET v_is_eligible = 1;
    END IF;

    SELECT v_is_eligible;
END   ;