package org.example.film.services.revenue;

import org.example.film.models.entities.procedure.RevenueResponse;
import org.example.film.models.entities.procedure.revenueSp;
import org.springframework.cglib.core.Local;

import java.time.LocalDate;
import java.util.List;

public interface IRevenueService {
//    revenueSp getRevenueStats(String startDate, String endDate);
List<revenueSp> getRevenueStats(LocalDate startDate, LocalDate endDate);
}