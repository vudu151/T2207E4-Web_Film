package org.example.film.models.apis.episodeApi;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class EpisodeDto implements IRequest<String> {
    private String id;
    private String name;
    private String link_embed;
}
