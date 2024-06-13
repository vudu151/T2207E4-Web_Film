package org.example.film.models.requests.job;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class AddJobRequest implements IRequest<String> {
    @NotBlank(message = "The name is not null.")
    private String name;
}
