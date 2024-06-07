package org.example.film.models.requests.helps;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class EditHelpRequest implements IRequest<String> {
    private String id;
    @NotBlank(message = "The question is not null.")
    private String question;
    @NotBlank(message = "The answer is not null.")
    private String answer;
    private int status;
}
