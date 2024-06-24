package org.example.film.usercontroller.repositories;

import jakarta.transaction.Transactional;
import org.example.film.models.entities.Episode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface IEpisode2Repository extends JpaRepository<Episode,String> {
    Optional<Episode> findById(String id);
//    List<Episode> findBymovieid(@Param("movie_id") String movieid);
@Procedure(name = "GetEpisodesByMovieId")
List<Episode> getEpisodesByMovieId(@Param("movie_id") String movieId);
//    @Query(value = "CALL get_related_episodes(:episodeId)", nativeQuery = true)
//    List<Episode> getRelatedEpisodes(@Param("episodeId") String episodeId);
}
