package org.example.film.controllers.advice;

import org.example.film.configurations.securities.CustomUserDetails;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;


@ControllerAdvice(annotations = Controller.class)
//Controller này viết chung để lấy thông tin Security cho toàn Project
public class AccountControllerAdvice {
    @ModelAttribute
    public void addAttributes(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated()) {
            Object principal = authentication.getPrincipal();
            if (principal instanceof CustomUserDetails) {
                CustomUserDetails customUserDetails = (CustomUserDetails) principal;
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
    }
}
