package org.example.film.models.requests.helps;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AddHelpRequest implements IRequest<String> {
    @NotBlank(message = "The question is not null.")
    private String question;
    @NotBlank(message = "The answer is not null.")
    private String answer;
    private int status;
}
