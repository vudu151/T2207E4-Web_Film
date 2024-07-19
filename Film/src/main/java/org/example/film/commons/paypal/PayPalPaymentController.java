package org.example.film.commons.paypal;

import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import com.paypal.core.PayPalHttpClient;
import com.paypal.orders.AmountWithBreakdown;
import com.paypal.orders.OrderRequest;
import com.paypal.orders.PurchaseUnitRequest;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.example.film.commons.paypal.Utils.Utils;
import org.example.film.commons.paypal.config.PaypalPaymentIntent;
import org.example.film.commons.paypal.config.PaypalPaymentMethod;
import org.example.film.commons.paypal.service.PaypalService;
import org.example.film.configurations.securities.CustomUserDetails;
import org.example.film.controllers.CustomOAuth2User;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.PaymentUser;
import org.example.film.repositories.IPaymentMethodRepository;
import org.example.film.repositories.IPaymentUser;
import org.example.film.services.auth.AccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;

@Controller
@Slf4j
public class PayPalPaymentController {
    public static final String URL_PAYPAL_SUCCESS = "pay/success";
    public static final String URL_PAYPAL_CANCEL = "pay/cancel";


        @Autowired
    private   AccountsService accountsService;
    @Autowired
    private PaypalService paypalService;

    @Autowired
    private IPaymentUser iPaymentUser;

    @GetMapping("/buyaccount3")
    public String index(){
        return "public/buyaccount/index3";}



    @PostMapping("/pay")
    public String pay(HttpServletRequest request,@RequestParam("price") double price ) {
        String cancelUrl = Utils.getBaseURL(request) + "/" + URL_PAYPAL_CANCEL;
        String successUrl = Utils.getBaseURL(request) + "/" + URL_PAYPAL_SUCCESS;
        try{
        Payment payment = paypalService.createPayment(
                price,
                "USD",
                PaypalPaymentMethod.paypal,
                PaypalPaymentIntent.sale,
                "payment description",
                cancelUrl,
                successUrl);
        for (Links links : payment.getLinks())
            if (links.getRel().equals("approval_url"))
                return "redirect:" + links.getHref();
    }  catch (PayPalRESTException e){
            log.error(e.getMessage());
        }
        return "redirect:/";

}

    @GetMapping(URL_PAYPAL_CANCEL)
    public String cancelPay(){
		return "public/buyaccount/cancel";}


    @GetMapping(URL_PAYPAL_SUCCESS)
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
        try {
            Payment payment = paypalService.executePayment(paymentId, payerId);
            if (payment.getState().equals("approved")){
                Authentication authentication = SecurityContextHolder.getContext().getAuthentication();


                    if (authentication != null && authentication.isAuthenticated()) {
                        String email = null;
                        if (authentication.getPrincipal() instanceof CustomUserDetails customUserDetails) {
                            email = customUserDetails.getAccount().getEmail();
                           // Assuming the email is stored in the username field
                        } else if (authentication.getPrincipal() instanceof CustomOAuth2User customOauth2UserDetails) {
                            email = customOauth2UserDetails.getEmail();

                        } else {
                            // Handle other types of Authentication principal
                        }

                        if (email != null) {
                            CustomUserDetails existaccount = accountsService.loadUserByUsername(email);
                            if (existaccount != null) {

                                String accountId = existaccount.getAccount().getId();
                                String paymentCreateTime = payment.getCreateTime();
                                String paymentStatus = payment.getState(); // Get the payment status from the payment object
                                String paymentUpdateTime = payment.getUpdateTime(); // Get the payment update time from the payment object
                                Amount paymentAmount = payment.getTransactions().get(0).getAmount(); // Get the amount from the payment object
                                String paymentCurrency = paymentAmount.getCurrency();
                                String paymentValue = paymentAmount.getTotal();
                                int packageLevel = existaccount.getAccount().getLevel();
                                LocalDateTime createdAt = LocalDateTime.parse(paymentCreateTime, DateTimeFormatter.ISO_OFFSET_DATE_TIME);
                                LocalDateTime updatedAt = LocalDateTime.parse(paymentUpdateTime, DateTimeFormatter.ISO_OFFSET_DATE_TIME);
                                if ( paymentValue.equals("5.00") && paymentCurrency.equals("USD") ){
                                    existaccount.getAccount().setLevel(packageLevel + 1);
                                }else {
                                    existaccount.getAccount().setLevel(packageLevel+2);
                                }
                                var newPaymentUser = PaymentUser.builder()
                                                                               .account(existaccount.getAccount())
                                                                               .createdat(createdAt)
                                                                               .updateat(updatedAt)
                                                                               .paymentstatus(paymentStatus)
                                                                               .payerid(payerId)
                                                                               .paymentid(paymentId)
                                                                               .totalprice(paymentValue)
                                                                               .paymentcurrency(paymentCurrency)
                                        .packagelevel(existaccount.getAccount().getLevel())
                                                                                .active(true)
                                                                               .build();
                                iPaymentUser.save(newPaymentUser);
                                // Save the payment and account information to the database
                            }
                        }

                     }

            }


                return "public/buyaccount/success3";

        } catch (PayPalRESTException e) {
            log.error(e.getMessage());
        }
            return "redirect:/";

    }
}
