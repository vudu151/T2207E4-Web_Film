package org.example.film.repositories.procedure;

import org.example.film.models.entities.procedure.newsSp;
import org.example.film.models.entities.procedure.newscateSp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;

public interface INewscateSPRepository extends JpaRepository<newscateSp, String> {
    @Procedure("GetNewscatePaging")
    List<newscateSp> GetNewscatePage(
            int page,
            int size ,
            String searchTerm,
            String category);
}
