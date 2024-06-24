package org.example.film.models.requests.auth;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.example.film.models.entities.Account;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class ForgotPasswordRequest implements IRequest<Account> {
    @NotBlank(message = "The Email is not null.")
    @Email(message = "Email is not valid.")
    private String email;
}
