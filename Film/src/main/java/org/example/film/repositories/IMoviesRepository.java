package org.example.film.repositories;

import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Genre;
import org.example.film.models.entities.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface IMoviesRepository extends JpaRepository<Movies,String> {
    Optional<Movies> findById(String id);
    Optional<Movies> findByName(String name);
    List<Movies> findByCategoryMovieId(CategoryMovie id);
    List<Movies> findMoviesByCategoryMovieId(Movies movies);

    List<Movies> findAllByGenreList(List<String> genreList);

    List<Movies> findByNameContainingIgnoreCase(String query);
}
