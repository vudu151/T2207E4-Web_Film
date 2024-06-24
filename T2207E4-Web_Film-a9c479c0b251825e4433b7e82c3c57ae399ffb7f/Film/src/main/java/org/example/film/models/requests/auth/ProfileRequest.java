package org.example.film.models.requests.auth;

import jakarta.validation.constraints.*;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.example.film.models.entities.Account;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class ProfileRequest implements IRequest<Void> {
    @NotBlank(message = "The Username is not null.")
    @Size(min = 1, message = "Minimum length is 1.")
    private String userName;

    @NotBlank(message = "The Email is not null.")
    @Email(message = "Email is not valid.")
    private String email;

    @NotBlank(message = "The Address is not null.")
    private String address;

    private boolean gender;
}
