package org.example.film.models.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "paymentuser")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class PaymentUser  {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")
    @Column(name = "id")
    private String id;

    @ManyToOne
    @JoinColumn(name = "account_id", nullable = false)
    @NotNull(message = "User cannot be null")
    private Account account;

    @Column(name = "created_at")
    private LocalDateTime createdat;

    @Column(name = "update_at")
    private LocalDateTime updateat;

    @Column(name = "paymentid")
    private String paymentid;

    @Column(name = "payerid")
    private String payerid;

    @Column(name = "paymentstatus")
    private String paymentstatus;

    @Column(name = "totalprice")
    private String totalprice;

    @Column(name = "paymentcurrency")
    private String paymentcurrency;

    @Column(name = "packagelevel")
    private int  packagelevel;

    @Column(name = "active")
    private Boolean active;



}
