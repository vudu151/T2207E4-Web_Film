package org.example.film.controllers;

import jakarta.persistence.Column;
import org.example.film.models.entities.Account;
import org.example.film.models.enums.Provider;
import org.example.film.repositories.IAccountRepository;
import org.example.film.services.auth.AccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class CustomOAuth2User implements OAuth2User , UserDetails  {
    private  OAuth2User oauth2User;
    private String email;
    private Collection<? extends GrantedAuthority> authorities;
    private Provider provider;

//    private Account account;
//
    @Autowired
    private AccountsService accountsService;
//
//    public Account getAccount(){
//        return  accountsService.loadUserByUsername(getEmail())
//    }

    public CustomOAuth2User(OAuth2User oauth2User, String clientRegistrationId  ) {
        this.oauth2User = oauth2User;
        this.provider = determineProvider(clientRegistrationId);
        this.email = getEmail();
        this.authorities = getAuthorities();
        this.level = getLevel();
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
//    @Override
//    public Collection<? extends GrantedAuthority> getAuthorities() {
//        return oauth2User.getAuthorities();
//    }
@Override
public Collection<? extends GrantedAuthority> getAuthorities() {
    if (authorities == null) {
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        this.authorities = authorities;
    }
    return authorities;
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
    if (loginAttribute.equals("login") && email != null  ) {
        loginAttribute = "name";
    }


    return oauth2User.<String>getAttribute(loginAttribute);
}
    public String getEmail() {
        String email = oauth2User.<String>getAttribute("email");
        if (email == null) {
            return  oauth2User.<String>getAttribute("login") +"@github.com";
        } else {
            return email;
        }
//        return oauth2User.<String>getAttribute("email");
    }
    @Column(name = "level")
    private int level;

    @Autowired
    private IAccountRepository iAccountRepository;
    public int getLevel() {
        return level;
    }

    private String picture;
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
    public void setLevel(int level) {
        this.level = level;
    }
    public Provider getProvider() {
        return provider;
    }
    // Implement UserDetails methods



    //Do day dung Gmail de Login
    @Override
    public String getUsername() {
        return  getName();
    }

    @Override
    public String getPassword() {
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
