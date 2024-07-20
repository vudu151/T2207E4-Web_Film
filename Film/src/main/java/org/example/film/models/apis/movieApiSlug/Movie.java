package org.example.film.models.apis.movieApiSlug;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Movie {
    private String name;
    private String slug;
    private String origin_name;
    private String thumb_url;
    private String poster_url;
    private int year;
}
