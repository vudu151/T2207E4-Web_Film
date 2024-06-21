//package org.example.film.usercontroller.controllers.accounts;
//
//import org.example.film.models.entities.Account;
//import org.example.film.repositories.IAccountRepository;
//import org.example.film.usercontroller.service.auth.IAccountsService2;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.authentication.AnonymousAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.util.Optional;
//
//@Controller
//@RequestMapping("/profile2")
//public class accountprofile {
//    private final IAccountsService2 accountsService;
//    private final Authentication authentication;
//    @Autowired
//    private IAccountRepository iAccountRepository;
//
//    public accountprofile(IAccountsService2 accountsService, Authentication authentication) {
//        this.accountsService = accountsService;
//        this.authentication = authentication;
//    }
//
//    @GetMapping
//    public String getProfile(Model model, Authentication authentication) {
//        if (authentication instanceof AnonymousAuthenticationToken) {
//            return "redirect:/login";
//        }
//
//
//        String username = authentication.getName();
//        Optional<Account> accountOptional = iAccountRepository.findById(username);
//
//        if (accountOptional.isPresent()) {
//            Account account = accountOptional.get();
//            model.addAttribute("account", account);
//            return "public/auth/profile2";
//        } else {
//            throw new RuntimeException("Account not found for user: " + username);
//        }
//    }
//
//
//}
