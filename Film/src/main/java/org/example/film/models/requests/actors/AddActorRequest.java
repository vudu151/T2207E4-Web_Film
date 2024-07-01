package org.example.film.models.requests.actors;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class AddActorRequest implements IRequest<String> {
    private String movies;
    private String charactor;
    private String celebrities;
    private int status;
}
