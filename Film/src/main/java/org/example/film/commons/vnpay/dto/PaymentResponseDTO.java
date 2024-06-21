package org.example.film.commons.vnpay.dto;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentResponseDTO {
    private boolean success;
    private String message;
    private String transactionId;
}
