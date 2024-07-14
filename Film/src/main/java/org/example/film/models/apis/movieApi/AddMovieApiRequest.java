package org.example.film.models.apis.movieApi;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AddMovieApiRequest implements IRequest<String> {
    private String name;
    private String thumb_url;
}
