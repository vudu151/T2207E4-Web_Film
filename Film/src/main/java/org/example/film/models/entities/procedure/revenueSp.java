package org.example.film.models.entities.procedure;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Digits;
import lombok.*;

import java.math.BigDecimal;
import java.text.DecimalFormat;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class revenueSp {
    @Id
    @Column(name = "id")
    private Integer id;

    @Digits(integer=12, fraction=2)
    @Column(name = "total_revenue")
    private BigDecimal  totalrevenue;

    @Column(name = "month")
    private int month;

    @Column(name = "year")
    private int year;

//    @Digits(integer=12, fraction=6)
//    @Column(name = "avg_revenue")
//    private BigDecimal   avgrevenue;

//    @Digits(integer=12, fraction=6)
//    @Column(name = "max_revenue")
//    private BigDecimal  maxrevenue;
//
//    @Digits(integer=12, fraction=6)
//    @Column(name = "min_revenue")
//    private BigDecimal  minrevenue;

    @Column(name = "total_payments")
    private int totalpayments;

       @Column(name = "total_payments_5")
    private int totalpayments5;

       @Column(name = "total_payments_10")
    private int totalpayments10;


    @Digits(integer=12, fraction=6)
    @Column(name = " total_payments_5_percent")
    private BigDecimal  totalpayments5percent;
    @Digits(integer=12, fraction=6)
    @Column(name = " total_payments_10_percent")
    private BigDecimal  totalpayments10percent;


}
