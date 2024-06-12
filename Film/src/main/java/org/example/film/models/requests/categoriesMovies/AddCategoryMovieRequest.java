package org.example.film.models.requests.categoriesMovies;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class AddCategoryMovieRequest implements IRequest<String> {
    @NotBlank(message = "The name is not null.")
    private String name;
//
//    @NotBlank(message = "The slug is not null.")
//    private String slug;

    private int status;
}
