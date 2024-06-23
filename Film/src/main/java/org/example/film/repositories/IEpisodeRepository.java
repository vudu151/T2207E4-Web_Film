package org.example.film.repositories;

import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface IEpisodeRepository extends JpaRepository<Episode,String> {
    Optional<Episode> findById(String id);
    List<Episode> findAllByMovieId(Movies movies);

}
