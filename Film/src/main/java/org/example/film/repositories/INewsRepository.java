package org.example.film.repositories;

import org.example.film.models.entities.News;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface INewsRepository extends JpaRepository<News,String> {
    Optional<News> findById(String id);

    Optional<News> findByName(String name);
}
