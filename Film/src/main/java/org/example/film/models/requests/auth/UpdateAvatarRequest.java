package org.example.film.models.requests.auth;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UpdateAvatarRequest implements IRequest<String> {
    private String id;
    @NotBlank(message = "The avatar is not null.")
    private String avatar;

}
