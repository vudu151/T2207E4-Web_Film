package org.example.film.services.Revenue;

import jakarta.transaction.Transactional;
import org.example.film.models.entities.procedure.RevenueResponse;
import org.example.film.models.entities.procedure.revenueSp;
import org.example.film.repositories.procedure.IRevenueRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@Transactional
public class RevenueStatsService implements org.example.film.services.revenue.IRevenueService {

    @Autowired
    private IRevenueRepo revenueRepo;
//    @Override
//    public revenueSp getRevenueStats(String startDate, String endDate) {
//        return revenueRepo.getRevenueStats(startDate, endDate);
//    }
 @Override
    public List<revenueSp> getRevenueStats(LocalDate startDate, LocalDate endDate) {
        return revenueRepo.getRevenueStats(startDate, endDate);
    }
}