package org.example.film.models.apis.movieApiSlug;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MovieSlugRespone {
    private boolean status;
    private String msg;
    private Movie movie;
}
