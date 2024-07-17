package org.example.film.controllers;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import org.example.film.commons.cqrs.ISender;
import org.example.film.commons.jwt.JwtService;
import org.example.film.commons.response.JwtResponse;
import org.example.film.configurations.securities.CustomUserDetails;
import org.example.film.models.entities.Account;
import org.example.film.models.requests.auth.*;
import org.example.film.repositories.IAccountRepository;
import org.example.film.services.auth.IAccountsService;
import org.example.film.services.auth.UpdateAvatarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/v1/auth")
public class AuthController {
    @Autowired
    private IAccountsService iAccountsService;
    @Autowired
    private ISender iSender;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private JwtService jwtService;
    @Autowired
    private IAccountRepository iAccountRepository;
    @GetMapping("/confirm-email")
    public ResponseEntity<String> confirmEmail(@RequestParam("token") String confirmationToken) {
        Optional<Account> account = iAccountRepository.findByConfirmationToken(confirmationToken);

        if (account.isPresent()) {
            Account confirmedAccount = account.get();
            confirmedAccount.setActive(true);
            confirmedAccount.setConfirmationToken(null);
            confirmedAccount.setTokenExpirationDate(null);
            iAccountRepository.save(confirmedAccount);
            return ResponseEntity.ok("Email confirmed successfully!");
        } else {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid confirmation token.");
        }
    }
    @PostMapping("/register")
    public ResponseEntity<Object> register(@Valid @RequestBody RegisterRequest registerRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid registration data.");
        }
        var result = iSender.send(registerRequest);
        if(result.hasError()){
            ResponseEntity<Object> cd = ResponseEntity.badRequest().body(result.getError());

            return cd;
        }
        return ResponseEntity.ok().body("Account registered successfully.");
    }


    @PostMapping("/login")
    public ResponseEntity<Object> login(
            @RequestBody @Valid LoginRequest loginRequest,
                                        HttpServletRequest request,
                                        HttpServletResponse response,
                                        BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid login data");
        }
  try{
        // Get account info into form Login
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        loginRequest.getEmail(),
                         loginRequest.getPassword()
                )
        );
        SecurityContextHolder.getContext().setAuthentication(authentication);

        CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();

        Map<String, Object> claims = new HashMap<>();
        claims.put("email", userDetails.getAccount().getEmail());
        claims.put("userId", userDetails.getAccount().getId());
        //for 15 minutes
        String token = jwtService.generateToken(claims, (long) (15 * 60 * 1000));

        List<String> roles = userDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());

      // Check if the account is active

      if (userDetails.getAccount().getActive()== false) {
          return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Account is not active");
      }
        JwtResponse jwtResponse = new JwtResponse(token, userDetails.getAccount().getUserName(),
                userDetails.getAccount().getEmail(), roles);

        request.getSession().setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, SecurityContextHolder.getContext());

        //Save token into Cookies
        Cookie cookie = new Cookie("JWT_TOKEN", token);
        cookie.setSecure(true);                                                     //Cai dat bao mat
        cookie.setHttpOnly(true);                                                   //Khong cho JavaScript truy cap vao Cookie
        cookie.setMaxAge((int) TimeUnit.MILLISECONDS.toSeconds(30 * 60));   //Thoi gian song cua Cookie -> Tuc nguoi dung chi dang nhap 30 phut roi tu Logout
        cookie.setPath("/");                                                        //Cookie duoc truy cap tren moi duong dan
        response.addCookie(cookie);

        return ResponseEntity.ok(jwtResponse);
    } catch (
    BadCredentialsException e) {
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Unauthorized");
    }
    }

    @PostMapping("/forgot-password")
    public ResponseEntity<?> forgot_password(@RequestParam String email){
        var forgotPasswordRequest = new ForgotPasswordRequest(email);
        var result = iSender.send(forgotPasswordRequest);
        if(result.isOk()){
            return ResponseEntity.ok().body("Check email to reset password.");
        } else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(result.getError());
        }
    }

    //ResetPassword ca 2 Request la Token va newPassword nhung Token dung JS de lay luon roi
    @PostMapping("/reset-password")
    public ResponseEntity<?> reset_password(@Valid @RequestBody ResetPasswordRequest resetPasswordRequest,
                                            BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid form data");
        }
        var result = iSender.send(resetPasswordRequest);
        if(result.isOk()){
            return ResponseEntity.ok().body("Reset password successfully.");
        } else {
            return ResponseEntity.badRequest().body(result.getError());
        }
    }

    @GetMapping("/accounts/{id}")
    public ResponseEntity<Optional<Account>> getAccountById(@PathVariable String id){
        try {
            Optional<Account> account = iAccountsService.getAccountById(id);
            if(account.isPresent()) {
                return ResponseEntity.ok(account);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    //Save profile
    @PutMapping("/edit")
    public ResponseEntity<Void> editProfile(@Valid @RequestBody ProfileRequest profileRequest){
        var result = iSender.send(profileRequest);
        result.orThrow();
        return ResponseEntity.ok().build();
    }

    @PutMapping("/update/avatar")
    public ResponseEntity<String> updateAvatar(@Valid @RequestBody UpdateAvatarRequest updateAvatarRequest){
            var result = iSender.send(updateAvatarRequest);
            return ResponseEntity.ok(String.valueOf(result.orThrow()));
    }

}
