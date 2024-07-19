package org.example.film.commons.vnpay;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.example.film.commons.exception.GlobalCustomException;
import org.example.film.commons.vnpay.dto.PaymentRequestDTO;
import org.example.film.commons.vnpay.dto.PaymentResponseDTO;
import org.example.film.configurations.securities.CustomUserDetails;
import org.example.film.controllers.CustomOAuth2User;
import org.example.film.models.entities.Account;
import org.example.film.repositories.IAccountRepository;
import org.example.film.commons.vnpay.service.PaymentMethodService;
import org.example.film.services.auth.AccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

@Controller
@Slf4j
public class PaymentController {
    private final PaymentMethodService paymentMethodService;
    private final IAccountRepository iAccountRepository;
    private final VNPAYService vnpayService;


    @Autowired
    public PaymentController(PaymentMethodService paymentMethodService, IAccountRepository iAccountRepository, VNPAYService vnpayService) {
        this.paymentMethodService = paymentMethodService;
        this.iAccountRepository = iAccountRepository;
        this.vnpayService = vnpayService;
    }
@Autowired
public AccountsService accountsService;
    @GetMapping("/buyaccount")
    public String showUpgradeAccountPage(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

//        String currentUserName = authentication.getName();
        Object principal = authentication.getPrincipal();
        String account_id;
        if(principal instanceof CustomUserDetails customUserDetails) {
            account_id = customUserDetails.getAccount().getId();
            model.addAttribute("accountId", account_id);
        }
        else if(principal instanceof CustomOAuth2User customUserDetails){
            account_id = accountsService.loadUserByUsername(customUserDetails.getEmail()).getAccount().getId();
            model.addAttribute("accountId", account_id);
        } else {
            model.addAttribute("accountId", "");
        }
//        Optional<Account> account = iAccountRepository.findByUserName(currentUserName);

//        if (account.isPresent()) {
//            model.addAttribute("accountId", account.get().getId());
//        } else {
//            model.addAttribute("accountId", "");
//        }

        model.addAttribute("paymentMethods", paymentMethodService.getAllPaymentMethods());
        return "public/buyaccount/index";
    }

    @PostMapping("/vnpay")
    public String payment(@RequestParam("amount") int orderTotal,
//                          @RequestParam("level") int level,
                          @RequestParam("paymentMethodId") String paymentMethodId,
                          HttpServletRequest request,
                          Model model) {
        try{
        String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
        String orderInfo = "Upgrade account payment";
        HttpSession accountName =  request.getSession();

        request.getSession().setAttribute("paymentMethodId", paymentMethodId);
        model.addAttribute("accountName", accountName);
            String cs = request.getSession().toString();
        String vnpayUrl = vnpayService.createOrder(request, orderTotal * 1000, orderInfo, baseUrl);
        request.getSession().setAttribute("vnpayUrl", vnpayUrl);


        String cd=  "redirect:" + vnpayUrl ;
        return cd;
        }
catch (Exception e) {
                log.error("Error generating hash", e);
                throw new GlobalCustomException("Error generating hash", HttpStatus.INTERNAL_SERVER_ERROR);
//            e.printStackTrace();
//            return "";
            }
    }

    //Phải lấy được account trong khi thanh toán để truyền vào

    @GetMapping("/vnpay-payment-return3")
    public String paymentCompleted(HttpServletRequest request, Model model, HttpSession session) {
        PaymentResponseDTO response = paymentMethodService.handlePaymentReturn(request);

        if (response.isSuccess()) {
            String accountName =  (String) session.getAttribute("userName");
            if ((String) session.getAttribute("userName") != null ) {
                accountName = (String) session.getAttribute("userName");
            } else if ((String) session.getAttribute("name") != null ) {
                accountName = (String) session.getAttribute("name");
            }
            String transactionId = response.getTransactionId();
            // Lấy thời gian hiện tại
            LocalDateTime currentDateTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
            String paymentTime = currentDateTime.format(formatter);

            model.addAttribute("accountName", accountName);
            model.addAttribute("transactionId", transactionId);
            model.addAttribute("paymentTime", paymentTime);

            return "public/buyaccount/orderSuccess";
        } else {
            model.addAttribute("error", response.getMessage());
            return "public/buyaccount/index";
        }
    }

}
