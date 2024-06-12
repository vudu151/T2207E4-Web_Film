package org.example.film.models.requests.jobs;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

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
