package org.example.film.models.requests.genres;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DeleteGenreRequest implements IRequest<String> {
    private String id;
}
