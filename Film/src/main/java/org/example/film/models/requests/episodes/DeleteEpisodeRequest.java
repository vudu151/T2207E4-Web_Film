package org.example.film.models.requests.episodes;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DeleteEpisodeRequest implements IRequest<String> {
    private String id;
}
