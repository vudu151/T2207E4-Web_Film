package org.example.film.models.requests.job;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class EditJobRequest implements IRequest<String> {

    private String id;

    @NotBlank(message = "The name is not null.")
    private String name;
}
