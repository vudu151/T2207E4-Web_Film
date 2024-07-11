package org.example.film.repositories;

import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IActorRepository extends JpaRepository<Actors,String> {
    List<Actors> findActorsByMovies(Movies movies);
}
