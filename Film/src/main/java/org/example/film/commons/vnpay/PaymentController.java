package org.example.film.commons.vnpay;

import jakarta.servlet.http.HttpServletRequest;
import org.example.film.commons.vnpay.dto.PaymentResponseDTO;
import org.example.film.commons.vnpay.service.PaymentMethodService;
import org.example.film.models.entities.Account;
import org.example.film.repositories.IAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class PaymentController {

    private final VNPAYService vnPayService;
    private final PaymentMethodService paymentMethodService;
    private final IAccountRepository iAccountRepository;

    @Autowired
    public PaymentController(VNPAYService vnPayService, PaymentMethodService paymentMethodService, IAccountRepository iAccountRepository) {
        this.vnPayService = vnPayService;
        this.paymentMethodService = paymentMethodService;
        this.iAccountRepository = iAccountRepository;
    }

    @GetMapping("/buyaccount")
    public String showUpgradeAccountPage( HttpServletRequest request, Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentUserName = authentication.getName();

        Optional<Account> account = iAccountRepository.findByUserName(currentUserName);
        if (account.isPresent()) {
            request.getSession().setAttribute("accountId", account.get().getId());
        } else {
            request.getSession().setAttribute("accountId", null);
        }
        model.addAttribute("paymentMethods", paymentMethodService.getAllPaymentMethods());
        return "public/buyaccount/index";
    }

    @PostMapping("/vnpay")
    public String payment(@RequestParam("amount") int orderTotal,
                          @RequestParam("level") int level,
                          @RequestParam("paymentMethodId") String paymentMethodId,
                          HttpServletRequest request) {
        String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
        String orderInfo = "Upgrade account payment";
        String vnpayUrl = vnPayService.createOrder(request, orderTotal * 1000, orderInfo, baseUrl);

        request.getSession().setAttribute("paymentMethodId", paymentMethodId);
        return "redirect:" + vnpayUrl;
    }

    // Sau khi hoàn tất thanh toán, VNPAY sẽ chuyển hướng trình duyệt về URL này
    @GetMapping("/vnpay-payment-return")
    public String paymentCompleted(HttpServletRequest request, Model model) {

        PaymentResponseDTO response = paymentMethodService.handlePaymentReturn(request);

        if (response.isSuccess()) {
            // Retrieve account details based on transaction
            String transactionId = request.getParameter("vnp_TransactionNo");
            String orderInfo = request.getParameter("vnp_OrderInfo");
            String paymentTime = request.getParameter("vnp_PayDate");
            String totalPrice = request.getParameter("vnp_Amount");
            int level = Integer.parseInt(request.getParameter("level")); // Get level from request


            // Set model attributes for success page
            model.addAttribute("message", response.getMessage());
            model.addAttribute("orderId", orderInfo);
            model.addAttribute("totalPrice", totalPrice);
            model.addAttribute("paymentTime", paymentTime);
            model.addAttribute("transactionId", transactionId);
            return "public/buyaccount/orderSuccess";

        } else {
            model.addAttribute("error", response.getMessage());
            return "public/buyaccount/index";
        }
    }

}
