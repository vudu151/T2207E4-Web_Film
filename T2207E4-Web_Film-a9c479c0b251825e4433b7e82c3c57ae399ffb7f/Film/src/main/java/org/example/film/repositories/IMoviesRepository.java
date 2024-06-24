package org.example.film.repositories;

import org.example.film.models.entities.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface IMoviesRepository extends JpaRepository<Movies,String> {
    Optional<Movies> findById(String id);
    Optional<Movies> findByName(String name);

}
