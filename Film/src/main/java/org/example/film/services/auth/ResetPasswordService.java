package org.example.film.services.auth;

import io.jsonwebtoken.ExpiredJwtException;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.commons.jwt.JwtService;
import org.example.film.models.requests.auth.ResetPasswordRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ResetPasswordService implements IRequestHandler<ResetPasswordRequest, Void> {
    @Autowired
    private final JwtService jwtService;
    @Autowired
    private final IAccountsService iAccountsService;

    @Override
    public HandleResponse<Void> handle(ResetPasswordRequest resetPasswordRequest) throws Exception {
        String email = jwtService.extractClaim(resetPasswordRequest.getToken(), e -> e.get("email", String.class));
        try{
            if(email == null || email.isEmpty()){
                return HandleResponse.error("Token is not valid.");
            }
        } catch (ExpiredJwtException e){
            return HandleResponse.error("Token has expired.");
        }
        var account = iAccountsService.loadUserByUsername(email);
        iAccountsService.updatePassword(account, resetPasswordRequest.getNewPassword());
        return HandleResponse.ok();
    }
}
