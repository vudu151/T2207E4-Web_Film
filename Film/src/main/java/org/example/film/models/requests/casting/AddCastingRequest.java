package org.example.film.models.requests.casting;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class AddCastingRequest implements IRequest<String> {
    @NotBlank(message = "The movies is not null.")
    private String movies;

    @NotBlank(message = "The celebrity is not null.")
    private String celebrity;

    @NotBlank(message = "The job is not null.")
    private String job;

    private int status;
}
