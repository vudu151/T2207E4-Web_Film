package org.example.film.models.entities.procedure;

import jakarta.validation.constraints.Digits;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class RevenueResponse {
    @Digits(integer=12, fraction=6)
    private BigDecimal totalRevenue;
    @Digits(integer=12, fraction=6)
    private BigDecimal averageRevenue;
    @Digits(integer=12, fraction=6)
    private BigDecimal maxRevenue;
    @Digits(integer=12, fraction=6)
    private BigDecimal minRevenue;
    private int totalPayments;
    private int totalPayments5;
    private int totalPayments10;
    @Digits(integer=12, fraction=6)
    private BigDecimal totalPayments5Percent;
    @Digits(integer=12, fraction=6)
    private BigDecimal totalPayments10Percent;
}
