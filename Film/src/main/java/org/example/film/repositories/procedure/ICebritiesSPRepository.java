package org.example.film.repositories.procedure;

import org.example.film.models.entities.procedure.cebritiesp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;

public interface ICebritiesSPRepository extends JpaRepository<cebritiesp, String> {
    @Procedure("GetCebrityPage")
    List<cebritiesp> GetCebrityPage(
            int page,
            int size ,
            String searchTerm,
            String letter,
            String p_job,
            int p_yearfrom,
            int p_yearto
    );
}
