package org.example.film.models.requests.helps;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DeleteHelpRequest implements IRequest<String> {
    private String id;
}
