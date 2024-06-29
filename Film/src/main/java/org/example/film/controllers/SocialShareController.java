package org.example.film.controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.Principal;

@Controller
public class SocialShareController {
    @GetMapping("/share/facebook")
    public String shareFacebookPage(HttpServletRequest request, Model model) {
        // Get the current page URL and title
//        String currentPageUrl = request.getRequestURL().toString();
//        String currentPageTitle = request.getParameter("title");
//
//        model.addAttribute("currentPageUrl", currentPageUrl);
//        model.addAttribute("currentPageTitle", currentPageTitle);
//
//        // Redirect to the Facebook authorization page
//        return "redirect:https://www.facebook.com/dialog/feed?" +
//                "app_id=2655553031289836" +
//                "&link=" + URLEncoder.encode(currentPageUrl, StandardCharsets.UTF_8) +
//                "&name=" + URLEncoder.encode(currentPageTitle, StandardCharsets.UTF_8) +
//                "&redirect_uri=" + URLEncoder.encode(request.getRequestURL() + "?shared=true", StandardCharsets.UTF_8);
//         }
        // Get the current page URL and title
        String currentPageUrl = request.getRequestURL().toString();
        String currentPageTitle = request.getParameter("title");

        model.addAttribute("currentPageUrl", currentPageUrl);
        model.addAttribute("currentPageTitle", currentPageTitle);

        // Redirect to the Facebook authorization page
        return "redirect:https://www.facebook.com/dialog/feed?" +
                "app_id=7755303657870186" +
                "&link=" + URLEncoder.encode(currentPageUrl, StandardCharsets.UTF_8) +
                "&name=" + URLEncoder.encode(currentPageTitle, StandardCharsets.UTF_8) +
                "&redirect_uri=" + URLEncoder.encode(request.getRequestURL() + "?shared=true", StandardCharsets.UTF_8);
    }
//@Autowired
//private UserDetailsService userService;
//
//    @GetMapping("/share/facebook")
//    public String shareFacebookPost(Principal principal, Model model) {
//        // Get the current user
//        UserDetails userDetails = userService.loadUserByUsername(principal.getName());
//
//        // Set the necessary data for the Facebook share
//        model.addAttribute("userName", userDetails.getUsername());
//        model.addAttribute("postTitle", "My Spring Boot Post");
//        model.addAttribute("postDescription", "Check out this awesome post from my Spring Boot app!");
//        model.addAttribute("postUrl", "https://www.example.com/post/123");
//
//        return "facebook-share";
//    }
}