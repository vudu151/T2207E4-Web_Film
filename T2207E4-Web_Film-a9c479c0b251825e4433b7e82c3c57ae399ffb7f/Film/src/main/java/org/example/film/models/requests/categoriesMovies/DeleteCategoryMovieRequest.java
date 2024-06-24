package org.example.film.models.requests.categoriesMovies;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class DeleteCategoryMovieRequest implements IRequest<String> {
    private String id;
}
