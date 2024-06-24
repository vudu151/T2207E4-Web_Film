package org.example.film.repositories;

import org.example.film.models.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;

@Repository
public interface IRoleRepository extends JpaRepository<Role, String> {
    Collection<Role> findByName(String name);
}
