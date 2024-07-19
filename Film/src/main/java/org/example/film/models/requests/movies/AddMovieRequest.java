package org.example.film.models.requests.movies;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Genre;

import java.util.Date;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AddMovieRequest implements IRequest<String> {
    @NotBlank(message = "The name is not null.")
    private String name;

    @NotNull(message = "The total episode is required.")
    private int totalEpisode;

    @NotBlank(message = "The poster is not null.")
    private String poster;

    @NotNull(message = "The isSeries is not null.")
    private int isSeries;

    @NotNull(message = "The isPopular is not null.")
    private int isPopular;

    @NotNull(message = "The screeningStatus is not null.")
    private int screeningStatus;

    @NotBlank(message = "The trailer is not null.")
    private String trailer;

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

    @NotNull(message = "The status is not null.")
    private int status;

    private int isApi;

    @NotNull(message = "The category movies is not null.")
    private String categoriesMoviesId;

    @NotNull(message = "The genre movies is not null.")
    private String genreId;

    private List<String> genreListId;

    private List<String> imagesId;
}
