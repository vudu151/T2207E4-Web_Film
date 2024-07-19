package org.example.film.services.google;

import org.example.film.controllers.CustomOAuth2User;
import org.example.film.services.auth.AccountsService;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

@Service
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private final AccountsService accountsService;

    public CustomOAuth2UserService(AccountsService accountsService) {
        this.accountsService = accountsService;
    }


    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2User user =  super.loadUser(userRequest);

        return new CustomOAuth2User(user, userRequest.getClientRegistration().getRegistrationId() );
//        OAuth2UserService<OAuth2UserRequest, OAuth2User> delegate = new DefaultOAuth2UserService();
//        OAuth2User oAuth2User = delegate.loadUser(userRequest);
//        return new CustomOAuth2User(oAuth2User, userRequest.getClientRegistration().getRegistrationId(), accountsService);
    }
}
//@Service
//public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {
//
//    private final ClientRegistrationRepository clientRegistrationRepository;
//    private final DefaultOAuth2UserService delegate;
//
//    public CustomOAuth2UserService(ClientRegistrationRepository clientRegistrationRepository) {
//        this.clientRegistrationRepository = clientRegistrationRepository;
//        this.delegate = new DefaultOAuth2UserService();
//    }
//
//    @Override
//    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
//        OAuth2User user = this.delegate.loadUser(userRequest);
//        String registrationId = userRequest.getClientRegistration().getRegistrationId();
//
//        if ("google".equals(registrationId)) {
//            return new CustomOAuth2User(user);
//        } else if ("github".equals(registrationId)) {
//            return new CustomOAuth2User(user);
//        }
//
//        return user;
//    }
//}