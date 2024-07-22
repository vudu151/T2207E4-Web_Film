package org.example.film.repositories.procedure;

import org.example.film.models.entities.procedure.RevenueResponse;
import org.example.film.models.entities.procedure.revenueSp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.http.ResponseEntity;

import java.time.LocalDate;
import java.util.List;

public interface IRevenueRepo extends JpaRepository<revenueSp, Integer> {
//    @Procedure("get_revenue_stats")
//    public revenueSp getRevenueStats(@Param("start_date") String startDate, @Param("end_date") String endDate);
@Procedure("get_revenue_stats4")
List<revenueSp> getRevenueStats(@Param("revenue_start_date") LocalDate revenueStartDate, @Param("revenue_end_date") LocalDate revenueEndDate);

}
