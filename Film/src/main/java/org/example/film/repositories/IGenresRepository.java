package org.example.film.repositories;

import org.example.film.models.entities.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface IGenresRepository extends JpaRepository<Genre,String> {
    Optional<Genre> findById(String id);
    Optional<Genre> findByName(String name);
    Optional<Genre> findBySlug(String slug);
}
