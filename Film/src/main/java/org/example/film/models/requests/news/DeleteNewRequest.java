package org.example.film.models.requests.news;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DeleteNewRequest implements IRequest<String> {
    private String id;
}
