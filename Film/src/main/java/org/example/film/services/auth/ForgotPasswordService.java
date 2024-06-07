package org.example.film.services.auth;

import jakarta.mail.MessagingException;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.commons.email.IEmailService;
import org.example.film.commons.jwt.JwtService;
import org.example.film.configurations.appconfigs.AppConfigs;
import org.example.film.models.requests.auth.ForgotPasswordRequest;
import org.example.film.repositories.IAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

@Service
@RequiredArgsConstructor
public class ForgotPasswordService implements IRequestHandler<ForgotPasswordRequest, Void> {
    @Autowired
    private final IAccountRepository iAccountRepository;
    @Autowired
    private final JwtService jwtService;
    @Autowired
    private final AppConfigs appConfigs;
    @Autowired
    private final IEmailService iEmailService;

    @Override
    public HandleResponse<Void> handle(ForgotPasswordRequest forgotPasswordRequest) throws Exception {
        var account = iAccountRepository.findByEmail(forgotPasswordRequest.getEmail());
        if(account.isEmpty()){
            return HandleResponse.error("Email does not exist.");
        }

        Boolean active = account.get().getActive();
        if(active != null && !account.get().getActive()){
            return HandleResponse.error("Account has already locked.");
        }

        //Create claims to attached to token
        Map<String, Object> claims = new HashMap<>();
        claims.put("email", account.get().getEmail());
        claims.put("id", account.get().getId());
        String token = jwtService.generateToken(claims, (long) (15*60*1000));

        //Set mail
        var to = account.get().getEmail();
        var subject = "Block Buster - Reset Password";
        var url = appConfigs.getHost() + "/reset-password?token=" + token;
        //var content = "Clink on the following link to reset password " + url;
        String content = "<p>Hello, guy</p>"
                + "<p>Click the link below to change your password:</p>"
                + "<p><a href=\"" + url + "\">Change my password</a></p>"
                + "<br>"
                + "<p>Ignore this email if you do remember your password, "
                + "or you have not made the request.</p>";

        CompletableFuture.runAsync(()->{            //Handle Asynchronous
            try {
                iEmailService.sendEmail(to, subject, content);
            } catch (MessagingException e){
                e.printStackTrace();
            }
        });
        return HandleResponse.ok();
    }
}
