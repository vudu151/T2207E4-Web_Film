package org.example.film.repositories;

import org.example.film.models.entities.Director;
import org.example.film.models.entities.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IDirectorRepository extends JpaRepository<Director,String> {
    List<Director> findDirectorByMovies(Movies movies);
}
