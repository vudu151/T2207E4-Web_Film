package org.example.film.models.requests.jobs;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class DeleteJobRequest implements IRequest<String> {
    private String id;
}
