package org.example.film.models.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "payment_methods")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PaymentMethod {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")
    @Column(name = "payment_method_id")
    private String paymentMethodId;

    @Column(name = "payment_method_name", nullable = false)
    private String paymentMethodName;

    @Column(columnDefinition = "TEXT")
    private String description;
}
