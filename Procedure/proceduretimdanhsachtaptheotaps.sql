 
DROP PROCEDURE IF EXISTS timdanhsachtaptheotaps;
CREATE PROCEDURE timdanhsachtaptheotaps(IN p_episode_id VARCHAR(255))
BEGIN
  
  SELECT e.* 
  FROM episodes e
  WHERE e.movie_id = (SELECT e2.movie_id 
          FROM episodes e2 
          WHERE e2.id =  p_episode_id) 
  ORDER BY e.name ASC;
 
END;

 