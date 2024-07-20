package org.example.film.models.requests.paginationApis;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PaginationRequest implements IRequest<String> {
    private int number;
}
