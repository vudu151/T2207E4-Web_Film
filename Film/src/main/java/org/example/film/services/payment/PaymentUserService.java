package org.example.film.services.payment;

import lombok.RequiredArgsConstructor;
import org.example.film.repositories.IAccountRepository;
import org.example.film.repositories.IPaymentMethodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PaymentUserService {
    @Autowired
    private IPaymentMethodRepository iPaymentMethodRepository;
    @Autowired
    private IAccountRepository iAccountRepository;

//    public void createPaymentuser(String paymentMethodId,String payerId , String accountId) {
//        // Get payment method and account from repositories
//        // Create new Payment entity with paymentMethod and account
//        // Save the payment to the database
//    }
}
