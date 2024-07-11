package org.example.film.repositories.procedure;

import org.example.film.models.entities.procedure.moviesp;
import org.example.film.models.entities.procedure.moviesp2;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;

public interface ITestProcedure  extends JpaRepository<moviesp2, String> {
    @Procedure("TestGetMoviePage")
    List<moviesp2> TestGetMoviePage(int  a);

}
