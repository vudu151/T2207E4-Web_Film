package org.example.film.models.requests.actors;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class DeleteActorRequest implements IRequest<String> {
    private String id;
}
