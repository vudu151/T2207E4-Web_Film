package org.example.film.repositories;

import org.example.film.models.entities.Casting;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.entities.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ICastingRepository extends JpaRepository<Casting,String> {
    Optional<Casting> findByCelebrityAndJobsAndMovies(Celebrity celebrity, Job job, Movies movies);
    List<Casting> findCastingsByMovies(Movies id);

    @Query("SELECT c.celebrity.name " +
            "FROM Casting c " +
            "WHERE c.movies.id = :movieId " +
            "AND c.jobs = :job")
    List<String> findCelebrityNamesByMovieIdAndJob(@Param("movieId") String movieId, @Param("job") Job job);
}
