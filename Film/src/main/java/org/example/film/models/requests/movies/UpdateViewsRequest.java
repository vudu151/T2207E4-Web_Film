package org.example.film.models.requests.movies;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UpdateViewsRequest implements IRequest<String> {
    private String id;
    private int totalView;
}
