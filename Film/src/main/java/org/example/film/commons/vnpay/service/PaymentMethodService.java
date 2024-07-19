package org.example.film.commons.vnpay.service;

import jakarta.servlet.http.HttpServletRequest;
import org.example.film.commons.vnpay.VNPAYService;
import org.example.film.commons.vnpay.dto.PaymentRequestDTO;
import org.example.film.commons.vnpay.dto.PaymentResponseDTO;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.Account_Payment;
import org.example.film.models.entities.PaymentMethod;
import org.example.film.repositories.IAccountPaymentRepository;
import org.example.film.repositories.IAccountRepository;
import org.example.film.repositories.IPaymentMethodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentMethodService implements IPaymentMethodService{
    @Autowired
    private IAccountRepository iAccountRepository;
    @Autowired
    private IPaymentMethodRepository iPaymentMethodRepository;
    @Autowired
    private IAccountPaymentRepository iAccountPaymentRepository;
    @Autowired
    private VNPAYService vnpayService;


    public List<PaymentMethod> getAllPaymentMethods() {
        return iPaymentMethodRepository.findAll();
    }

    @Override
    public PaymentResponseDTO processPayment(PaymentRequestDTO request, HttpServletRequest httpRequest) {
        Account account = iAccountRepository.findById(request.getAccount().getId())
                .orElseThrow(() -> new RuntimeException("Account not found."));
        PaymentMethod paymentMethod = iPaymentMethodRepository.findById(request.getPaymentMethodId())
                .orElseThrow(() -> new RuntimeException("Payment method not found."));

        int amount = request.getLevel() == 1 ? 1000 : 2000;  //1tr or 2tr
        String urlReturn = "http://localhost:8080/api/payments/vnpay_return"; // Adjust as needed
        String paymentUrl = vnpayService.createOrder(
                httpRequest,
                amount, "Orrder info", urlReturn);

        PaymentResponseDTO response = new PaymentResponseDTO();
        response.setSuccess(true);
        response.setMessage("Payment URL generated successfully.");
        response.setTransactionId(paymentUrl);
        return response;
    }

    @Override
    public PaymentResponseDTO handlePaymentReturn(HttpServletRequest request) {
        int result = vnpayService.orderReturn(request);
        PaymentResponseDTO response = new PaymentResponseDTO();

        if(result == 1){
//            String accountId = request.getParameter("vnp_TxnRef");
//            Account account = iAccountRepository.findById(accountId)
//                    .orElseThrow(() -> new RuntimeException("Account not found."));

            int amount = Integer.parseInt(request.getParameter("vnp_Amount"));
            int level = amount == 100000 ? 1 : 2;  // 100,000 VND = level 1, 200,000 VND = level 2

//            account.setLevel(level);
//            iAccountRepository.save(account);

            response.setSuccess(true);
            response.setMessage("Payment successful");
        } else if(result == 0){
            response.setSuccess(false);
            response.setMessage("Payment failed");
        } else {
            response.setSuccess(false);
            response.setMessage("Invalid signature");
        }
        return response;
    }

}