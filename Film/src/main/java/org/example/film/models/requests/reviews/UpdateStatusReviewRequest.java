package org.example.film.models.requests.reviews;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UpdateStatusReviewRequest implements IRequest<String> {
    private String id;
}
