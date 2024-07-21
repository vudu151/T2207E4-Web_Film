DROP PROCEDURE IF EXISTS GetMoviePage2;

 
CREATE PROCEDURE GetMoviePage2(
    IN pageNum INT,
    IN pageSize INT,
        IN p_keyword VARCHAR(255)
        ,
    IN p_genres VARCHAR(255)
    ,
      IN sub_genres VARCHAR(255)
    ,
    -- IN p_rating_from INT,
    -- IN p_rating_to INT,
    IN p_year_from INT,
    IN p_year_to INT
)
BEGIN
    DECLARE startIdx INT DEFAULT 0;
    DECLARE totalRecords INT DEFAULT 0;
    DECLARE totalPages INT DEFAULT 0;
    SET startIdx = (pageNum-1) * pageSize;
    SELECT COUNT(*) INTO totalRecords
    FROM movies m
    INNER JOIN genres g ON  m.genre_id = g.id
    INNER JOIN category_movie cm ON m.category_movie_id = cm.id
    INNER JOIN genres_movies gm ON m.id = gm.movie_id
    INNER JOIN genres sg ON gm.genre_id = sg.id
    WHERE 
    -- (
        -- p_keyword IS NULL OR  (
    ( m.name LIKE CONCAT('%',   LOWER(p_keyword), '%')
       OR m.keywords LIKE CONCAT('%',  LOWER(p_keyword), '%') )
       AND g.name     LIKE CONCAT('%', p_genres, '%')
         AND sg.name     LIKE CONCAT('%', sub_genres, '%')
    --    ;
    -- ) )
    --   AND (p_genres IS NULL OR g.name LIKE CONCAT('%', p_genres, '%')
    -- --   g.id IN (SELECT * FROM STRING_SPLIT(p_genres, ','))
     --   )
    --   AND (  m.mmpa_rating >= p_rating_from)
    --   AND (  m.mmpa_rating <= p_rating_to)
      AND (  YEAR(m.release_date) >= p_year_from)
      AND (  YEAR(m.release_date) <= p_year_to);

    SET totalPages = CEIL(totalRecords / CAST(pageSize AS DECIMAL));   
     SELECT 
        m.id, m.is_popular, m.is_series, m.keywords, m.level, m.mmpa_rating, m.name, m.poster, m.release_date, m.screening_status, m.status, m.total_view, m.trailer ,g.name AS genremain, cm.name as catename, sg.name as subgenres,
        (SELECT totalRecords) AS total_items,
		(SELECT totalPages) AS total_pages
    FROM movies m
    INNER JOIN genres g ON  m.genre_id = g.id
    INNER JOIN category_movie cm ON m.category_movie_id = cm.id
      INNER JOIN genres_movies gm ON m.id = gm.movie_id
    INNER JOIN genres sg ON gm.genre_id = sg.id
    WHERE 
        -- (p_keyword IS NULL OR (
          ( m.name LIKE CONCAT('%',   LOWER(p_keyword), '%')
       OR m.keywords LIKE CONCAT('%',  LOWER(p_keyword), '%') )
             AND g.name     LIKE CONCAT('%', p_genres, '%')      
              AND sg.name     LIKE CONCAT('%', sub_genres, '%')
        -- ))
    --   AND (p_genres IS NULL OR   g.name LIKE CONCAT('%', p_genres, '%')
    --   )
    --   AND (  m.mmpa_rating >= p_rating_from)
    --   AND (   m.mmpa_rating <= p_rating_to)
      AND (  YEAR(m.release_date) >= p_year_from)
      AND (  YEAR(m.release_date) <= p_year_to)
    ORDER BY m.total_view DESC
    LIMIT startIdx, pageSize;
 
END;

call GetMoviePage2(
 1,
    10,
    'a'
    ,
    '', 'action',
--    0,
--     60,
        1900,
        2100
)