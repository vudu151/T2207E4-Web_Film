package org.example.film.services.auth;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.requests.auth.RegisterRequest;
import org.example.film.models.entities.Account;
import org.example.film.repositories.IAccountRepository;
import org.example.film.repositories.IRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RegisterService implements IRequestHandler<RegisterRequest, Account> {
    @Autowired
    private IAccountRepository iAccountRepository;
    @Autowired
    private IRoleRepository iRoleRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

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

        var account = Account.builder()
                .userName(registerRequest.getUserName())
                .password(passwordEncoder.encode(registerRequest.getPassword()))
                .email(registerRequest.getEmail())
                .active(true)
                .avatar("https://res.cloudinary.com/vuxuandu/image/upload/v1717518217/fptaptech/2b59d49a-84d8-4b14-9013-2066c6fb2ef3.png.png\n")
                .roles(roleDefault)
                .build();
        iAccountRepository.save(account);
        return HandleResponse.ok(account);
    }
}
