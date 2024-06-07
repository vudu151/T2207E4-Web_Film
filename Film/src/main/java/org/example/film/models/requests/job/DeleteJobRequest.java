package org.example.film.models.requests.job;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class DeleteJobRequest implements IRequest<String> {
    private String id;
}
