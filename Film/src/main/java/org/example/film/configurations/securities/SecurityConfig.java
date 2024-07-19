package org.example.film.configurations.securities;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.example.film.controllers.CustomOAuth2User;
import org.example.film.services.auth.AccountsService;
import org.example.film.services.auth.IAccountsService;
import org.example.film.services.google.CustomOAuth2UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.authority.mapping.GrantedAuthoritiesMapper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.core.oidc.user.OidcUserAuthority;
import org.springframework.security.oauth2.core.user.OAuth2UserAuthority;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.rememberme.InMemoryTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentRememberMeToken;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.ForwardedHeaderFilter;

import javax.sql.DataSource;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static org.springframework.http.HttpMethod.*;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@EnableMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class SecurityConfig {
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private IAccountsService iAccountsService;
    @Autowired
    private DataSource dataSource;

    @Autowired
    private AccountsService accountsService;

    @Bean
    public DaoAuthenticationProvider daoAuthenticationProvider(){
        DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
        daoAuthenticationProvider.setUserDetailsService(iAccountsService);
        daoAuthenticationProvider.setPasswordEncoder(passwordEncoder);
        return daoAuthenticationProvider;
    }

    // Config Persistent Token Repository để sử dụng bảng persistent_logins trong Database
    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
//        var tokenRepository = new JdbcTokenRepositoryImpl() ;
//        tokenRepository.setDataSource(dataSource);          //User DataResource to connect to Database
//        return tokenRepository;
        return new InMemoryTokenRepositoryImpl();
    }


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity) throws Exception {
        httpSecurity.sessionManagement(
//                s -> s.sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
                session -> session
                        .sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
                        .maximumSessions(1)
                        .maxSessionsPreventsLogin(true)
                        .expiredUrl("/login?expired=true")
        )
                .getSharedObject(AuthenticationManagerBuilder.class)
                .authenticationProvider(daoAuthenticationProvider())
        ;

        httpSecurity.getSharedObject(AuthenticationManagerBuilder.class)
                .authenticationProvider(daoAuthenticationProvider());
        httpSecurity.authorizeHttpRequests(request -> {
                    request.requestMatchers("/css/**", "/js/**", "/images/**").permitAll();
                    request.requestMatchers("/getCategories","/getGenres").denyAll();
                    request.requestMatchers("/").permitAll();
                    request.requestMatchers("/buyaccount3/**").permitAll();
                    request.requestMatchers("/login/oauth2/**").permitAll();
                    request.requestMatchers("/oauth/**").permitAll();
                    request.requestMatchers("/share/facebook").permitAll();
                    request.requestMatchers("/vnpay/**", "/vnpay-payment-return/**" ,"/submitOrder/**").permitAll();
                    request.requestMatchers(GET,"/admin/**").hasAuthority("ROLE_ADMIN");

//                    request.anyRequest().authenticated();
                    request.anyRequest().permitAll();
        })
                .logout(logout -> {
                    logout.logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
                    logout.logoutSuccessUrl("/");
                    logout.deleteCookies("JSESSIONID");
                    logout.invalidateHttpSession(true);
                    logout.clearAuthentication(true);
                })

                .formLogin(login -> {
                    login.loginPage("/login");
                    login.failureUrl("/login?error=true");
//                    login.defaultSuccessUrl("/", true);
                    login.successHandler(customAuthenticationSuccessHandler);
                     login.permitAll();
                })
                .rememberMe(rememberMe -> {
                    rememberMe.key("remember-me");                          //Khoa bao mat de ma hoa token "remember-me"
                    rememberMe.tokenValiditySeconds(3 * 24 * 60 * 60);      //3 days
                    rememberMe.tokenRepository(persistentTokenRepository());
                })
                .oauth2Login(oauth2 -> {
                    oauth2.loginPage("/login");
                     oauth2.userInfoEndpoint()
                            .userAuthoritiesMapper(userAuthoritiesMapper())
                            .userService(oauthUserService);
                    oauth2.successHandler(
                            customAuthenticationSuccessHandler  );
                })
                .csrf(AbstractHttpConfigurer::disable)
        ;

        return httpSecurity.build();
    }
    @Bean
    GrantedAuthoritiesMapper userAuthoritiesMapper() {
        return (authorities) -> {
           Set<GrantedAuthority> mappedAuthorities = new HashSet<>();

            authorities.forEach(authority -> {
                if (authority instanceof OidcUserAuthority oidcAuth) {
                    oidcAuth.getIdToken().getClaimAsStringList("groups").forEach(a -> mappedAuthorities.add(new SimpleGrantedAuthority(a)));
                } else if (authority instanceof OAuth2UserAuthority oauth2Auth) {
                    ((List<String>) oauth2Auth.getAttributes().getOrDefault("groups", List.of())).forEach(a -> mappedAuthorities.add(new SimpleGrantedAuthority(a)));
                }
            });

            return mappedAuthorities;
        };
    }

    @Autowired
    private CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;

    @Bean
    FilterRegistrationBean<ForwardedHeaderFilter> forwardedHeaderFilter() {
        final FilterRegistrationBean<ForwardedHeaderFilter> filterRegistrationBean = new FilterRegistrationBean<ForwardedHeaderFilter>();
        filterRegistrationBean.setFilter(new ForwardedHeaderFilter());
        filterRegistrationBean.setOrder(Ordered.HIGHEST_PRECEDENCE);

        return filterRegistrationBean;
    }
    @Autowired
    private DefaultOAuth2UserService defaultOAuth2UserService;
    @Autowired
    private CustomOAuth2UserService oauthUserService;
    @Bean
    public AuthenticationManager authenticationManager(){
        DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
        daoAuthenticationProvider.setUserDetailsService(iAccountsService);
        daoAuthenticationProvider.setPasswordEncoder(passwordEncoder);
        return new ProviderManager(daoAuthenticationProvider);
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource()

    {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOrigins(Arrays.asList("http://localhost:8080"));
        configuration.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE"));
        configuration.setAllowedHeaders(Arrays.asList("Content-Type", "Authorization"));

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }
}
