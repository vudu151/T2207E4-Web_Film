package org.example.film.models.requests.genres;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AddGenreRequest implements IRequest<String> {
    @NotBlank(message = "The name is not null.")
    private String name;
    private int status;
}
