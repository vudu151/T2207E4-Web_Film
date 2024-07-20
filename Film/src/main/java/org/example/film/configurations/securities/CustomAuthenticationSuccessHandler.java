package org.example.film.configurations.securities;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.film.controllers.CustomOAuth2User;
import org.example.film.models.entities.Account;
import org.example.film.services.auth.AccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    private AccountsService accountsService;
//    @Autowired
//    public CustomAuthenticationSuccessHandler(AccountsService accountsService) {
//        this.accountsService = accountsService;
//    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest trequest, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        // Handle OAuth2 user processing

        if (authentication.getPrincipal() instanceof CustomOAuth2User) {
            CustomOAuth2User oauthUser = (CustomOAuth2User) authentication.getPrincipal();
//            OAuth2User oauthUser = (OAuth2User) authentication.getPrincipal();
//            String clientRegistrationId = ((OAuth2AuthenticationToken) authentication).getAuthorizedClientRegistrationId();
//            CustomOAuth2User customOAuth2User = new CustomOAuth2User(oauthUser, clientRegistrationId, accountsService);

            CustomOAuth2User  account = (CustomOAuth2User ) authentication.getPrincipal();
            String email = account.getEmail();

            int level = accountsService.loadUserByUsername(email).getLevel();
            trequest.setAttribute("level", level);
            ((CustomOAuth2User) authentication.getPrincipal()).setLevel(level);
            accountsService.processOAuthPostLogin(oauthUser, trequest);
        }

        // Set Authentication in the session
        HttpSession session = trequest.getSession(true); // Now you can access the request object
        session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, SecurityContextHolder.getContext());


        String targetUrl = trequest.getHeader("Referer"); // Get the original URL
        if (targetUrl == null || targetUrl.isEmpty()) {
            targetUrl = "http://localhost:8080/"; // Default to root path if no referrer is available
        }
        response.sendRedirect(targetUrl);
    }
}