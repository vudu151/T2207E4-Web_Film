package org.example.film.commons.vnpay.dto;

import lombok.*;
import org.example.film.models.entities.Account;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentRequestDTO {
    private Account account;
    private String paymentMethodId;
    private int level;
    private int amount;
}
