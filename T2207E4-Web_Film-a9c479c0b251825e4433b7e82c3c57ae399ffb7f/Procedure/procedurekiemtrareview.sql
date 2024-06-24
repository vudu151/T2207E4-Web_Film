DROP PROCEDURE IF EXISTS can_account_review_movie;
CREATE PROCEDURE can_account_review_movie(
    IN account_id BINARY(16),
    IN movie_id BINARY(16)
)
BEGIN
    DECLARE view_status_id BINARY(16);
    
    SELECT view_status 
    INTO view_status_id
    FROM watch_movie_status
    WHERE account_id = account_id AND movie_id = movie_id;
    
    IF view_status_id IN (
        (SELECT id FROM view_status WHERE `status` = true AND `name` = 'watched'),
        (SELECT id FROM view_status WHERE `status` = true AND `name` = 'watch_again')
    ) THEN
        SELECT true AS can_review;
    ELSE
        SELECT false AS can_review;
    END IF;
END;