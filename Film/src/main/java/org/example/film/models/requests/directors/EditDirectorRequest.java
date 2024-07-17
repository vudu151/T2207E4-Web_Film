package org.example.film.models.requests.directors;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class EditDirectorRequest implements IRequest<String> {
    private String id;
    private String movies;
    private String celebrities;
    private int status;
}
