package org.example.film.repositories;

import org.example.film.models.entities.Help;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface IHelpsRepository extends JpaRepository<Help,String> {
    Optional<Help> findById(String id);
    Optional<Help> findByQuestion(String name);
}
