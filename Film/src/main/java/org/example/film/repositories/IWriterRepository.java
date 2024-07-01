package org.example.film.repositories;

import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Writers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IWriterRepository extends JpaRepository<Writers,String> {
    List<Writers> findWritersByMovies(Movies movies);

}
