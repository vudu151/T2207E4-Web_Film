package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.configurations.securities.CustomUserDetails;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.requests.auth.ForgotPasswordRequest;
import org.example.film.models.requests.auth.LoginRequest;
import org.example.film.models.requests.auth.RegisterRequest;
import org.example.film.models.requests.auth.ResetPasswordRequest;
import org.example.film.repositories.IAccountRepository;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class HomeController {
    @Autowired
    private IAccountRepository iAccountRepository;
    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;
    @GetMapping("")
    public String index(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("categoryMovieList", getCategoryMovieList());

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


    private List<CategoryMovie> getCategoryMovieList() {
        return iCategoriesMoviesService.getListCategoriesMovies();
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
        return "public/movies/index2";
    }


    @GetMapping("/movies/movie-detail")
    public String movie_detail(){
        return "public/movies/movie-detail";
    }

    @GetMapping("/movies/movie-player")
    public String movie_player(){
        return "public/movies/movie-player";
    }

    @GetMapping("/moviesdetail2")
    public String movie_detailapi(){
        return "public/movies/detail2";
    }

    @GetMapping("/contact-us")
    public String contact_us() {return "public/home/contact-us";}
}
