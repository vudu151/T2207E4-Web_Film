package org.example.film.models.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "account_payments")
@Getter
@Setter
@NoArgsConstructor
public class Account_Payment {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")
    @Column(name = "payment_id")
    private String userPaymentId;

    @ManyToOne
    @JoinColumn(name = "account_id", nullable = false)
    @NotNull(message = "User cannot be null")
    private Account account;

    @ManyToOne
    @JoinColumn(name = "payment_method_id", nullable = false)
    private PaymentMethod paymentMethod;

    @Column(name = "account_number", nullable = false)
    private String accountNumber;
}
