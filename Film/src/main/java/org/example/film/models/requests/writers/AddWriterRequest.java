package org.example.film.models.requests.writers;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class AddWriterRequest implements IRequest<String> {
    private String movies;
    private String celebrities;
    private int status;
}
