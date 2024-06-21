package org.example.film.commons.vnpay.service;

import jakarta.servlet.http.HttpServletRequest;
import org.example.film.commons.vnpay.dto.PaymentRequestDTO;
import org.example.film.commons.vnpay.dto.PaymentResponseDTO;

public interface IPaymentMethodService {
    public PaymentResponseDTO processPayment(PaymentRequestDTO request, HttpServletRequest httpRequest);
    public PaymentResponseDTO handlePaymentReturn(HttpServletRequest request);
}
