package org.example.film.models.requests.reviews;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AddReviewRequest implements IRequest<String> {
    @NotNull(message = "The account is not null.")
    private String accountId;

    @NotNull(message = "The star is not null.")
    private int star;

    @NotNull(message = "The title is not null.")
    private String title;

    @NotNull(message = "The comment is not null.")
    private String comment;

    private Date createAt;

    @NotNull(message = "The status is not null.")
    private int status;

    @NotNull(message = "The movies is not null.")
    private String movies;
}
