package org.example.film.models.requests.actors;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class EditActorRequest implements IRequest<String> {
    private String id;
    private String movies;
    private String charactor;
    private String celebrities;
    private int status;

}
