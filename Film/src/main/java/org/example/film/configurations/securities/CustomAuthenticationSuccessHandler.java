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
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    private AccountsService accountsService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest trequest, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        // Handle OAuth2 user processing
        if (authentication.getPrincipal() instanceof CustomOAuth2User) {
            CustomOAuth2User oauthUser = (CustomOAuth2User) authentication.getPrincipal();
            accountsService.processOAuthPostLogin(oauthUser, trequest);

        }
        // Set Authentication in the session
        HttpSession session = trequest.getSession(true); // Now you can access the request object
        session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, SecurityContextHolder.getContext());

//        Account account = (Account) authentication.getPrincipal();
//        int level = account.getLevel();
//        trequest.setAttribute("level", level);
        String targetUrl = trequest.getHeader("Referer"); // Get the original URL
        if (targetUrl == null || targetUrl.isEmpty()) {
            targetUrl = "/movies"; // Default to root path if no referrer is available
        }
        response.sendRedirect(targetUrl);
    }
}