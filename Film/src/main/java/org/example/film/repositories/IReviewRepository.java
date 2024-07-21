package org.example.film.repositories;

import org.example.film.models.entities.Account;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Reviews;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface IReviewRepository extends JpaRepository<Reviews,String> {

    @Query("SELECT ROUND(AVG(r.star), 0) FROM Reviews r WHERE r.movies.id = :movieId and r.status = 1")
    Optional<Integer> getAverageStarByMovieId(@Param("movieId") String movieId);
    List<Reviews> findAllByMovies(Movies movies);
    List<Reviews> findReviewsByMoviesAndAccount(Movies movies, Account account);

    @Query("SELECT r.movies FROM Reviews r")
    List<Movies> findAllReviewMovies();
}
