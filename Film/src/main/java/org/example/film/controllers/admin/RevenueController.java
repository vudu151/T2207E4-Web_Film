package org.example.film.controllers.admin;

import jakarta.servlet.http.HttpSession;
import org.example.film.models.entities.procedure.RevenueResponse;
import org.example.film.models.entities.procedure.revenueSp;
import org.example.film.services.Revenue.RevenueStatsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class RevenueController {
    @Autowired
    private    RevenueStatsService  revenueService;


    @GetMapping("")
    public String getRevenueDashboard(
            @RequestParam(name = "revenue_start", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate revenueStart,
            @RequestParam(name = "revenue_end", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate revenueEnd,
            Model model) {
//        String endDate = LocalDate.now().format(DateTimeFormatter.ISO_DATE);
//        String startDate = LocalDate.now().minusMonths(5).withDayOfMonth(1).format(DateTimeFormatter.ISO_DATE);
        if (revenueStart == null) {
            revenueStart = LocalDate.now().minusMonths(5).withDayOfMonth(1);
        }
        if (revenueEnd == null) {
            revenueEnd = LocalDate.now();
        }
//        String endDate = revenueEnd.format(DateTimeFormatter.ISO_DATE);
//        String startDate = revenueStart.format(DateTimeFormatter.ISO_DATE);


            List<revenueSp> revenueList = revenueService.getRevenueStats(
                revenueStart,
revenueEnd        );
        BigDecimal totalRevenue = revenueList.stream().map(revenueSp::getTotalrevenue).reduce(BigDecimal.ZERO, BigDecimal::add);
        int totalPayments5 = revenueList.stream().mapToInt(revenueSp::getTotalpayments5).sum();
        int totalPayments10 = revenueList.stream().mapToInt(revenueSp::getTotalpayments10).sum();

        model.addAttribute("revenueData", revenueList);
        model.addAttribute("totalRevenue", totalRevenue);
        model.addAttribute("totalPayments5", totalPayments5);
        model.addAttribute("totalPayments10", totalPayments10);
        model.addAttribute("startDate", revenueStart.toString()); // Pass start date for form
        model.addAttribute("endDate", revenueEnd.toString());

        return "admin/dashboard/dashboard";
    }

    @PostMapping("")
    public String updateRevenueDashboard(@RequestParam(name = "revenue_start" , required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate revenueStart,
                                         @RequestParam(name = "revenue_end" , required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate revenueEnd,
                                         Model model) {
        if (revenueStart == null) {
            revenueStart = LocalDate.now().minusMonths(5).withDayOfMonth(1);
        }
        if (revenueEnd == null) {
            revenueEnd = LocalDate.now();
        }
//        String endDate = revenueEnd.format(DateTimeFormatter.ISO_DATE);
//        String startDate = revenueStart.format(DateTimeFormatter.ISO_DATE);

        List<revenueSp> revenueList = revenueService.getRevenueStats(
                revenueStart,
                revenueEnd
        );
        BigDecimal totalRevenue = revenueList.stream().map(revenueSp::getTotalrevenue).reduce(BigDecimal.ZERO, BigDecimal::add);
        int totalPayments5 = revenueList.stream().mapToInt(revenueSp::getTotalpayments5).sum();
        int totalPayments10 = revenueList.stream().mapToInt(revenueSp::getTotalpayments10).sum();
        model.addAttribute("revenueList", revenueList);
        return "admin/dashboard/dashboard";
    }


}