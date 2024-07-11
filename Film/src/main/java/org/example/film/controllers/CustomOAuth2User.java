package org.example.film.controllers;

import org.example.film.models.enums.Provider;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.oauth2.core.user.OAuth2User;

import java.util.Collection;
import java.util.Map;

public class CustomOAuth2User implements OAuth2User {
    private  OAuth2User oauth2User;

    private Provider provider;

    public CustomOAuth2User(OAuth2User oauth2User, String clientRegistrationId) {
        this.oauth2User = oauth2User;
        this.provider = determineProvider(clientRegistrationId);
    }

    private Provider determineProvider(String clientRegistrationId) {
        if (clientRegistrationId.equals("google")) {
            return Provider.GOOGLE;
        } else if (clientRegistrationId.equals("github")) {
            return Provider.GITHUB;
        } else {
            return Provider.LOCAL;
        }
    }
    @Override
    public Map<String, Object> getAttributes() {
        return oauth2User.getAttributes();
    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return oauth2User.getAuthorities();
    }

@Override
public String getName() {
    String loginAttribute = "login";


    String provider = oauth2User.getAttribute("provider");
    if (provider != null && provider.equals("github")) {
        loginAttribute = "login";
    } else if (provider != null && provider.equals("google")) {
        loginAttribute = "name";
    }


    String email = oauth2User.getAttribute("email");
    if (loginAttribute.equals("login") && email != null && email.contains("@gmail.com")) {
        loginAttribute = "name";
    }


    return oauth2User.<String>getAttribute(loginAttribute);
}
    public String getEmail() {
        String email = oauth2User.<String>getAttribute("email");
        if (email == null) {
            return "http://github.com/" + oauth2User.<String>getAttribute("login");
        } else {
            return email;
        }
//        return oauth2User.<String>getAttribute("email");
    }

    public Provider getProvider() {
        return provider;
    }
}
