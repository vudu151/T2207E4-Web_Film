package org.example.film.models.requests.categoies;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DeleteCategoriesRequest implements IRequest<String> {
    private String id;
}
