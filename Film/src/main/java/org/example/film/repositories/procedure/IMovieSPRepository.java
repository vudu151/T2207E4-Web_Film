package org.example.film.repositories.procedure;

import org.example.film.models.entities.procedure.moviesp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;

public interface IMovieSPRepository extends JpaRepository<moviesp, String> {
    @Procedure("GetMoviePage")
    List<moviesp> GetMoviePage(
            int page,
            int size ,
            String searchTerm
            ,
            String genres
            ,
//            int ratingfrom,
//            int ratingto,
            int yearfrom,
            int yearto
    );
}
