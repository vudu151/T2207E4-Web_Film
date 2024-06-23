package org.example.film.models.requests.episodes;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

import java.math.BigDecimal;
import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class EditEpisodeRequest implements IRequest<String> {
    private String id;

    @NotNull
    private int name;

    @NotBlank(message = "The link is not null.")
    @Size(min = 1, message = "Minimum length is 1.")
    private String link;

    @NotBlank(message = "The description is not null.")
    @Size(min = 1, message = "Minimum length is 1.")
    private String description;

    private Date duration;

    private int fileSize;

    private BigDecimal licensePrice;

    private Date licenseStart;

    private Date licenseEnd;

    private BigDecimal tax;

    private int status;

    @JsonProperty("movie_id")
    private String movie_id;

}
