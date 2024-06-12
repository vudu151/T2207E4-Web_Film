package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.configurations.securities.CustomUserDetails;
import org.example.film.models.entities.Account;
import org.example.film.models.requests.auth.ForgotPasswordRequest;
import org.example.film.models.requests.auth.LoginRequest;
import org.example.film.models.requests.auth.RegisterRequest;
import org.example.film.models.requests.auth.ResetPasswordRequest;
import org.example.film.repositories.IAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
public class HomeController {
    @Autowired
    private IAccountRepository iAccountRepository;

    @GetMapping("")
    public String index(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null && authentication.isAuthenticated()){
            Object principal = authentication.getPrincipal();
            if(principal instanceof CustomUserDetails){
                CustomUserDetails customUserDetails = (CustomUserDetails) principal;
                String account_id = customUserDetails.getAccount().getId();
                String email = customUserDetails.getUsername();             //Do minh dang nhap bang Email nen no hieu la Username luon trong CustomUserDetail
                String username = customUserDetails.getAccount().getUserName();
                String role = customUserDetails.getAuthorities().iterator().next().getAuthority();
                int level = customUserDetails.getAccount().getLevel();
                String avatar = customUserDetails.getAccount().getAvatar();

                model.addAttribute("username", username);
                model.addAttribute("role", role);
                model.addAttribute("level", level);
                model.addAttribute("avatar", avatar);
            }
        }
        return "public/home/home";
    }

    @GetMapping("/register")
    public String register(Model model, @ModelAttribute("registerDto") RegisterRequest registerRequest){
        model.addAttribute("registerDto", registerRequest);
        return "public/auth/register";
    }

    @GetMapping("/login")
    public String login(Model model, @ModelAttribute("loginRequest") LoginRequest loginRequest) {
        model.addAttribute("loginRequest", loginRequest);
        return "public/auth/login";
    }

    @GetMapping("/forgot-password")
    public String forgot_password(Model model, @ModelAttribute("forgotPasswordRequest")ForgotPasswordRequest forgotPasswordRequest){
        model.addAttribute("forgotPasswordRequest", forgotPasswordRequest);
        return "public/auth/forgot-password";
    }

    @GetMapping("/reset-password")
    public String reset_password(Model model, @ModelAttribute("resetPasswordRequest")ResetPasswordRequest resetPasswordRequest){
        model.addAttribute("resetPasswordRequest", resetPasswordRequest);
        return "public/auth/reset-password";
    }

    @GetMapping("/profile/accountId")
    @ResponseBody
    public String getAccountId() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null && authentication.isAuthenticated()){
            Object principal = authentication.getPrincipal();
            if(principal instanceof CustomUserDetails){
                CustomUserDetails customUserDetails = (CustomUserDetails) principal;
                String account_id = customUserDetails.getAccount().getId();
                return account_id;
            }
        }
        return null;
    }

    @GetMapping("/profile")
    public String profile() {
        return "public/auth/profile";
    }




    //============================================

    @GetMapping("/news")
    public String news(){
        return "public/news/index";
    }

    @GetMapping("/news/news-detail")
    public String new_detail(){
        return "public/news/news-detail";
    }

    @GetMapping("/movies")
    public String movies(){
        return "public/movies/index";
    }

    @GetMapping("/movies/movie-detail")
    public String movie_detail(){
        return "public/movies/movie-detail";
    }
}
