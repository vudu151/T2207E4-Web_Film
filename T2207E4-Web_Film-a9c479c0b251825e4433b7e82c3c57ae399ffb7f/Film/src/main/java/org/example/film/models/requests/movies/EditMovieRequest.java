package org.example.film.models.requests.movies;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.example.film.models.entities.CategoryMovie;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EditMovieRequest implements IRequest<String> {
    private String id;
    @NotBlank(message = "The name is not null.")
    private String name;

    @NotNull(message = "The total episode is required.")
    private int totalEpisode;

    @NotBlank(message = "The poster is not null.")
    private String poster;

    @NotNull(message = "The release is not null.")
    private Date release;

    @NotNull(message = "The total duration is not null.")
    private int totalDuration;

    @NotBlank(message = "The mmpa rating is not null.")
    private String mmpaRating;

    @NotBlank(message = "The keywords is not null.")
    private String keyWords;

    @NotBlank(message = "The description is not null.")
    private String description;

    private int totalView;

    @NotNull(message = "The level is not null.")
    private int level;

    private Date createAt;

    private int status;

    @NotNull(message = "The category movies is not null.")
    private CategoryMovie categoriesMoviesId;
}
