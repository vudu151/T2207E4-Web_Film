package org.example.film.models.requests.celebrities;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class DeleteCelebrityRequest implements IRequest<String> {
    private String id;
}
