package org.example.film.services.auth;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.enums.Provider;
import org.example.film.models.requests.auth.RegisterRequest;
import org.example.film.models.entities.Account;
import org.example.film.repositories.IAccountRepository;
import org.example.film.repositories.IRoleRepository;
import org.example.film.services.email.EmailService2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class RegisterService implements IRequestHandler<RegisterRequest, Account> {
    @Autowired
    private IAccountRepository iAccountRepository;
    @Autowired
    private IRoleRepository iRoleRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

//   @Autowired
//   private Provider provider;
@Autowired
private EmailService2 emailService2;


    @Override
    public HandleResponse<Account> handle(RegisterRequest registerRequest) throws Exception {
        var existAccount = iAccountRepository.findByEmail(registerRequest.getEmail());
        if(existAccount.isPresent()){
            return HandleResponse.error("Account has already exists.");
        }

            var roleDefault = iRoleRepository.findByName("ROLE_USER");
        if(roleDefault.isEmpty()){
            return HandleResponse.error("Role not found.");
        }
        String confirmationToken2 = generateConfirmationToken();

        var account = Account.builder()
                .userName(registerRequest.getUserName())
                .password(passwordEncoder.encode(registerRequest.getPassword()))
                .email(registerRequest.getEmail())
                .active(false)
                .avatar("https://res.cloudinary.com/vuxuandu/image/upload/v1720883787/fptaptech/e50b2f47-f3e8-4d2f-ad2f-f5fe65b93e91.png.png")
                .roles(roleDefault)
                .provider(Provider.LOCAL)
                .confirmationToken(confirmationToken2)
                .tokenExpirationDate(LocalDateTime.now().plusDays(1)) // Token expires in 1 day

                .build();
        iAccountRepository.save(account);

        emailService2.sendConfirmationEmail(account.getEmail(), confirmationToken2);

        return HandleResponse.ok(account);
    }
    private String generateConfirmationToken() {
        return UUID.randomUUID().toString();
    }
}
