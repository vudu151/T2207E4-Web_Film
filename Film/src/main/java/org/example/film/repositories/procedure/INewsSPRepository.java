package org.example.film.repositories.procedure;

import org.example.film.models.entities.procedure.moviesp;
import org.example.film.models.entities.procedure.newsSp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;

public interface INewsSPRepository extends JpaRepository<newsSp, String> {
    @Procedure("GetNewsPaging")
    List<newsSp> GetNewsPage(
            int page,
            int size ,
            String searchTerm);
}
