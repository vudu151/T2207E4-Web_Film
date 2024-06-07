package org.example.film.models.requests.news;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

import java.util.Date;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EditNewRequest implements IRequest<String> {
    private String id;
    @NotBlank(message = "The name is not null.")
    private String name;

    @NotBlank(message = "The tag is not null.")
    private String tag;

    @NotBlank(message = "The description is not null.")
    private String description;

    private int status;

    @NotNull(message = "The category news is not null.")
    private List<String> categoriesId;
}
