package org.example.film.models.requests.favourites;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.Movies;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AddFavouritesRequest implements IRequest<String> {
    private String id;
    private String movies;
    private String account;
    private Date createAt;
    private int status;
}
